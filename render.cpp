/*
 ____  _____ _        _
| __ )| ____| |      / \
|  _ \|  _| | |     / _ \
| |_) | |___| |___ / ___ \
|____/|_____|_____/_/   \_\
http://bela.io
*/
/**
This is a versatile quantizer for Bela PEPPER Eurorack Module.

Module configuration:
- IN0-3 analog inputs
- IN4-7 digital (trigger/gate) inputs

Usage:
- IN0 in CV0 input, attenuated by POT0, OUT0 is quantrized output CV0
- IN4 is trigger input for CV0
- OUT4 is trigger output for CV0

- POT4 controls scale

- PUSH0 is a trigger override for CV0
- PUSH2 toggles trigger mode :
	- Auto : output changes when input changes (default)
	- Input : outpu only changes when it receives a trigger input
- PUSH3 toggles ARP mode :
	- OFF : output CV will follow input CV as close as possible (default)
	- ON : the output CV scale is mapped to a linear CV input scale, so that every note in the scale is equally spaced.
		Note : This is useful e.g. for Arpegiator modes, where you want all notes to be triggered 

TODO:
- Parallelize inputs, CV1 to/from OUT1/IN1, trigger from IN5
- More scales/ chords
- CV input + pot for scale -- pot is already threre, probably switch analog/digital mode in config?
- CV input + pot for transposition -- changes fundamental output
- Pot (+ CV input?) for number of notes in scale

- GUI for playing around with scales, ...

Tentative interface (NOT as implemented!) :
IN0 : CV0			OUT0 : CV0
IN1 : CV1			OUT1 : CV1
IN2 : SCALE			OUT2 : 
IN3 : NOTES			OUT3 : 
IN4 : TRIG0			OUT4 : TRIG0
IN5 : TRIG1			OUT5 : TRIG1
IN6 : TRANSPOSE		OUT6 : 
IN7 :				OUT7 : 

POT0 : CV0 att		POT1 : CV0 att
POT2 : SCALE att	POT3 : NOTES att 
POT4 :				POT5 : 
POT6 : TRANSPOSE	POT7 : 

PUSH0 : Trig override
PUSH1 : 
PUSH2 : Trigger mode toggle
PUSH3 : ARP mode toggle

*/

#include <Bela.h>
#include <cmath>

// Calibration
#define CAL_INPUT_VOLTAGE 5.0	// Sent t0 IN0
#define CAL_IN0_READOUT 0.457	// Raw readout of IN0
#define CAL_IN1_READOUT 0.457	// Raw readout of IN1 // TODO

static float gAnalogIn0ToVolt = CAL_INPUT_VOLTAGE / CAL_IN0_READOUT; 	// Measured per channel : send a precision voltage into the channel and print its raw read value
static float gAnalogIn1ToVolt = CAL_INPUT_VOLTAGE / CAL_IN1_READOUT; 	

static float gVoltsToAnalogOut = 1 / 5.0;

// Analog pinout
#define PIN_CV0_IN 0
#define PIN_CV1_IN 1
//#define PIN_TRIG0_IN 4
//#define PIN_TRIG1_IN 5

#define PIN_SCALE_IN 4

#define PIN_CV0_OUT 0
#define PIN_CV1_OUT 1
#define PIN_TRIG0_OUT 4
#define PIN_TRIG1_OUT 5

// Digital pinout
#define PIN_PUSH0 15	// Also used for TRIG0 IN
#define PIN_PUSH1 14
#define PIN_PUSH2 13
#define PIN_PUSH3 12

#define PIN_LED0 6
#define PIN_LED1 7
//#define PIN_LED2 9 // TDOD: Should be D9 but does not work. To investigate.
#define PIN_LED3 2
#define PIN_LED4 3
#define PIN_LED5 0
#define PIN_LED6 1
#define PIN_LED7 4
#define PIN_LED8 5
#define PIN_LED9 8

// Constants
#define TRIG_OUT_LENGTH_SAMPLES 64	// Length of output trigger pulse, in samples.
#define PUSH_IN_LENGTH_SAMPLES 4	// Debouncing of pushbuttons AND digital jacks inputs. Time hysteresis in sample.

#define INTERVAL_GUARD_BAND 0.5		// Guard band between intervals to avoid glitches in autotrig mode. 1.0 means no guard band.

#define MAX_SCALE_SIZE 12

// Scales, in semitones from fundamental
static const int gNScales = 6;

static int gChromaticScaleSize = 12;
static float gChromaticScale[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

static int gDiminishedScaleSize = 9;
static float gDiminishedScale[] = {0, 1, 3, 4, 6, 7, 9, 10, 11};

static int gMajorScaleSize = 7;
static float gMajorScale[] = {0, 2, 4, 5, 7, 9, 11};

static int gMinorScaleSize = 7;
static float gMinorScale[] = {0, 2, 3, 5, 7, 8, 10};

static int gMinorSeventhSize = 4;
static float gMinorSeventh[] = {0, 3, 7, 10};

static int gMajorSeventhSize = 4;
static float gMajorSeventh[] = {0, 4, 7, 11};

// State

static bool gAutoTrigMode = true;
static bool gAutoTrigModeChanged = false;

static bool gArpMode = false;		// ARP mode where each interval has the same chance of landing.
static bool gArpModeChanged = false;

static float * gScale;				// Current scale setting
static float gScaleThresholds[MAX_SCALE_SIZE];	// Thresholds for current scale
static int gScaleSize;

static int gOut0_st = -1;		// Current interval output by CV0
static int gOut1_st = -1;		// Current interval output by CV1

static int gTrigOut0 = 0;			// Output state of Trig0. Counts the number of frames until pulse ends.
static int gTrigOut1 = 0;			

static bool gB0Pressed = false;		// Button decided states.
static bool gB1Pressed = false;
static bool gB2Pressed = false;
static bool gB3Pressed = false;
static bool gB0JustPressed = false;	// Button just changed state.
static bool gB1JustPressed = false;
static bool gB2JustPressed = false;
static bool gB3JustPressed = false;
static int gB0Count = 0;	// For debouncing. Counts the number of frames between state changes.
static int gB1Count = 0;
static int gB2Count = 0;
static int gB3Count = 0;

bool setup(BelaContext *context, void *userData)
{
	// Check if analog channels are enabled
	if(context->analogFrames == 0 || context->analogFrames > context->audioFrames) {
		rt_printf("Error: this example needs analog enabled, with 4 or 8 channels\n");
		return false;
	}
	
	// Buttons
	// all inputs by default
	
	// LEDs
	pinMode(context, 0, 0, OUTPUT);
	pinMode(context, 0, 1, OUTPUT);
	pinMode(context, 0, 2, OUTPUT);
	pinMode(context, 0, 3, OUTPUT);
	pinMode(context, 0, 4, OUTPUT);
	pinMode(context, 0, 5, OUTPUT);
	pinMode(context, 0, 6, OUTPUT);
	pinMode(context, 0, 7, OUTPUT);
	pinMode(context, 0, 8, OUTPUT);
	pinMode(context, 0, 9, OUTPUT);

	return true;
}

static bool debounce(const bool status, volatile bool *pressed, volatile int *count) {
	bool changed = false;
	if (!*pressed) {
		if (status) {
			// Input High in in Low state
			*count += 1;
			if (*count >= PUSH_IN_LENGTH_SAMPLES) {
				// Pressed long enough
				*pressed = true;
				*count = 0;
				changed = true;
			}
		} else {
			// Input Low in Low state
			*count = 0;
		}
	} else {
		if (status) {
			// Input High in High state
			*count = 0;
		} else {
			// Input Low in High state
			*count += 1;
			if (*count >= PUSH_IN_LENGTH_SAMPLES) {
				// De-pressed long enough
				*pressed = false;
				*count = 0;
				changed = true;
			}
		}
	}
	return changed;
}

float circular_distance(float a, float b, float max_value) {
    float direct = fabsf(a - b);
    float wrap = max_value - direct;
    return direct < wrap ? direct : wrap;
}

int binary_search_closest(const float *arr, int size, float target) {
    int low = 0;
    int high = size - 1;
    int mid;

    while (low < high) {
        mid = (low + high) / 2;

        if (arr[mid] < fmodf(target, 12.0))
            low = mid + 1;
        else
            high = mid;
    }

    int best_idx = low;

    if (low > 0) {
        float d1 = circular_distance(target, arr[low - 1], 12.0);
        float d2 = circular_distance(target, arr[low], 12.0);

        if (d1 < d2) {
            best_idx = low - 1;
        }
    }

    return best_idx;
}

void render(BelaContext *context, void *userData)
{
	static float in0, in0_v, in0_st, octave, interval;
	static float in4;
	int in4_map;
	float out0_v;
	bool status; 

	for(unsigned int n = 0; n < context->analogFrames; n++) {
		
		// Button 0 == Jack IN4
		status = digitalRead(context, n, PIN_PUSH0);
		gB0JustPressed = debounce(status, &gB0Pressed, &gB0Count);
		digitalWrite(context, n, PIN_LED6, int(gB0Pressed)); // LED matches button
		// Button 1
		status = digitalRead(context, n, PIN_PUSH1);
		gB1JustPressed = debounce(status, &gB1Pressed, &gB1Count);
		digitalWrite(context, n, PIN_LED7, int(gB1Pressed)); // LED matches button
		// Button 2
		status = digitalRead(context, n, PIN_PUSH2);
		gB2JustPressed = debounce(status, &gB2Pressed, &gB2Count);
		digitalWrite(context, n, PIN_LED8, int(gB2Pressed)); // LED matches button
		// Button 3
		status = digitalRead(context, n, PIN_PUSH3);
		gB3JustPressed = debounce(status, &gB3Pressed, &gB3Count);
		digitalWrite(context, n, PIN_LED9, int(gB3Pressed)); // LED matches button
		
		// LEDs
		/*
		digitalWrite(context, n, PIN_LED0, 1);
		digitalWrite(context, n, PIN_LED1, 1);
		//digitalWrite(context, n, PIN_LED2, 1);	// Does not work, to debug
		digitalWrite(context, n, PIN_LED3, 1);
		digitalWrite(context, n, PIN_LED4, 1);
		digitalWrite(context, n, PIN_LED5, 1);
		digitalWrite(context, n, PIN_LED6, 1);
		digitalWrite(context, n, PIN_LED7, 1);
		digitalWrite(context, n, PIN_LED8, 1);
		digitalWrite(context, n, PIN_LED9, 1);
		*/
		
		// -------- Settings
		// AutoTrig
		if (gB2Pressed) {
			if (!gAutoTrigModeChanged) {
				gAutoTrigMode = ! gAutoTrigMode;
				gAutoTrigModeChanged = true;
			}
		} else {
			gAutoTrigModeChanged = false;
		}
		digitalWrite(context, n, PIN_LED0, int(gAutoTrigMode));
		
		// ARP Mode
		if (gB3Pressed) {
			if (!gArpModeChanged) {
				gArpMode = ! gArpMode;
				gArpModeChanged = true;
			}
		} else {
			gArpModeChanged = false;
		}
		digitalWrite(context, n, PIN_LED1, int(gArpMode));
		
		// Scale
		in4 = analogRead(context, n, PIN_SCALE_IN);
		in4_map = int(map(in4, 0.0, 1.0, 0, gNScales));
		switch (in4_map) {
			case 0:
				gScale = gChromaticScale;
				gScaleSize = gChromaticScaleSize;
				break;
			case 1:
				gScale = gDiminishedScale;
				gScaleSize = gDiminishedScaleSize;
				break;
			case 2:
				gScale = gMajorScale;
				gScaleSize = gMajorScaleSize;
				break;
			case 3:
				gScale = gMinorScale;
				gScaleSize = gMinorScaleSize;
				break;
			case 4:
				gScale = gMinorSeventh;
				gScaleSize = gMinorSeventhSize;
				break;
			case 5:
				gScale = gMajorSeventh;
				gScaleSize = gMajorSeventhSize;
				break;
		}
		
		if (gArpMode) {
			for (int i = 0; i < gScaleSize; i++) {
				// Equidistant thresholds for all intervals in scale
				gScaleThresholds[i] = (12.0 / gScaleSize) * i;
				//gScaleThresholds[i] = 0.0;
			}
		} else {
			for (int i = 0; i < gScaleSize; i++) {
				// Thresholds are the same as the scale intervals
				gScaleThresholds[i] = gScale[i];
			}
		}
		
		// -------- Quantization

		// Read CV0 input
		in0 = analogRead(context, n, 0);
		in0_v = in0 * gAnalogIn0ToVolt; 	// In volts, or octaves (1 v/oct)
		
		// Interpret CV0 as note
		in0_st = in0_v * 12.0;				// In semitones, from 0V = fundamental
		octave = floor(in0_st / 12.0);		// Octave number
		interval = in0_st - octave * 12.0;	// Interval within octave, in semintones
		
		// Quantize CV0 to scale
		// Find closest interval, wraps around octave if needed
		int best_interval_index = -1.0;
		best_interval_index = binary_search_closest(gScaleThresholds, gScaleSize, interval);
		
		float closest_interval = gScaleThresholds[best_interval_index];
		int out_temp = gOut0_st;
		
		if (gAutoTrigMode) {
			// Need to debounce the input to avoid glitches in autotrig mode
			// This is essentially a schmitt trigger
			float best_interval_lo, best_interval_hi;	// Boundaries for interval detection
			int indexlo = ((best_interval_index - 1) % gScaleSize + gScaleSize) % gScaleSize; // Modulo that wraps-up negative index to the positive scale
			int indexhi = (best_interval_index + 1) % gScaleSize;
			bool update = false;
			
			best_interval_lo = closest_interval - (closest_interval - gScaleThresholds[indexlo]) / 2.0 * INTERVAL_GUARD_BAND;
			if (indexhi == 0) {
				// Interval is closest to the octave (which is never part of the scale)
				best_interval_hi = closest_interval + (12.0 - closest_interval) / 2.0 * INTERVAL_GUARD_BAND;
			} else {
				best_interval_hi = closest_interval + (gScaleThresholds[indexhi] - closest_interval) / 2.0 * INTERVAL_GUARD_BAND;
			}
			
			if (best_interval_index == 0) {
				// Interval is closest to the fundamental. Negative intervals will wrap around so we check both sides separately (OR condition)
				if ((interval >= best_interval_lo) or (interval <= best_interval_hi)) {
					update = true;
				}
			} else {
				if ((interval >= best_interval_lo) and (interval <= best_interval_hi)) {
					update = true;
				}
			}
			
			if (update) {
				// New note is within guard intervals! Update.
				out_temp = int(octave) * 12 + gScale[best_interval_index];
				//rt_printf("Updated! out_temp = %d, closest_interval = %f, best_interval_lo = %f, best_interval_hi = %f\n", out_temp, closest_interval, best_interval_lo, best_interval_hi);
			}
		} else {
			// Trigged based on input trigger -- no need of guard intervals / schmitt trigger
			out_temp = int(octave) * 12 + gScale[best_interval_index];
		}
		
		// Check if note needs to be updated
		if ((gAutoTrigMode and (out_temp != gOut0_st) and (gTrigOut0 == 0)) or (!gAutoTrigMode and gB0JustPressed and gB0Pressed)) {
			gOut0_st = out_temp;
			rt_printf("Trigged! out_temp = %d, interval= %f, closest_interval = %f, best_interval_index = %d, threshold = %f\n",
				out_temp, interval, closest_interval, best_interval_index, gScaleThresholds[best_interval_index]);
			
			// Output quantized CV0
			out0_v = float(gOut0_st) / 12.0;
			analogWrite(context, n, PIN_CV0_OUT, out0_v * gVoltsToAnalogOut);	// Quantized version of CV0
			//analogWrite(context, n, 7, in0_v * gVoltsToAnalogOut);	// DEBUG : Raw copy of CV0
			
			// Output trigger
			// Trigger only one pulse, even if CV keeps changing
			gTrigOut0 = TRIG_OUT_LENGTH_SAMPLES;
			analogWrite(context, n, PIN_TRIG0_OUT, 1.0);	// Gate ON
		}
		
		// Manage Trig Output pulse
		if (gTrigOut0 != 0) {
			gTrigOut0 -= 1;
			if (gTrigOut0 == 0) {
				analogWrite(context, n, PIN_TRIG0_OUT, 0.0);	// Gate OFF
			}
		}
		//rt_printf("in0_v : %f, in0_st : %f, octave : %f, interval : %f, closest_interval : %f\n", in0_v);
	}
}

void cleanup(BelaContext *context, void *userData)
{

}
