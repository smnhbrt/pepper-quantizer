# pepper-quantizer
A CV quantizer for [Bela PEPPER](#%20pepper-quantizer%20A%20CV%20quantizer%20for%20Bela%20PEPPER%20Eurorack%20Module%20%20##%20Installation%20*%20This%20repository%20is%20made%20for%20Bela%20PEPPER) Eurorack Module.
## Hardware configuration
These jumper configurations should be applied to Bela PEPPER for this project to properly run. Refer to [this official documentation](https://github.com/BelaPlatform/bela-pepper/wiki/Configuring-the-board#customisation-of-inputs) for more information.
* IN0-3 analog inputs
* IN4-7 digital (trigger/gate) inputs
## Installation
* Clone this repo on your local computer
	* `git clone https://github.com/smnhbrt/pepper-quantizer <local_folder>`
* Connect Bela through USB or LAN
* From your host computer, copy the content of the repository to a new project on Bela
	* `scp <local_folder> root@bela.local:Bela/projects/`
* Open the Bela IDA : type `bela.local` in any browser on your host computer
* Find the project `pepper-quantizer` in the IDE and execute it
	* You can also set this project to run at boot by default, in the Settings tab of Bela IDE
## Usage
This is a single channel CV quantizer with controllable scale and trigger options.

At the core, the module samples the input CV signal and snaps it to a predetermined scale. The "scale" is a collection of known pitches, that can be changed dynamically by the user. The snapped version of the input CV is output to the output CV jack. This quantization function is well known and can be found in countless other hardware or software modules.

Currently, these 6 "scales" are implemented (in that order) : chromatic, diminished, major, minor natural, minor 7 chord, major 7 chord.
 
Trigger mode can be set to Auto or Input by pressing the Trig mode button. In Auto mode, the output CV will follow the input CV automatically, triggering a change when the input CV has moved close enough to a new pitch from the scale. Auto mode is the default behavior. In Input mode, the output CV will only change when a rising edge is received at the Trig IN input signal or pushbutton. In both modes, the Trig out jack will output a short positive pulse at each change of the CV output.

ARP mode can be set to On or Off by pressing the ARP mode button. When Off, the output CV follows the input as close as possible. This is the default behavior. When On, the output CV scale is mapped to a linear CV input scale, so that every note in the scale is equally spaced. This is useful e.g. for arpeggiator-like patches : if you want all notes to be triggered rythmically at the same pace when you input a linear ramp to CV input ; or if you want all notes in the scale to be uniformly distributed over the input with a random input.
### Interface breakdown
In the following, IN0:7 denotes jack inputs, OUT0:7 are jack outputs, PUSH0:3 are pushbuttons, LED0:9 are red LED outputs, POT0:7 are potentiomener knobs. Jacks and controls that are not mentioned are left unused (in particular, the audio stereo input/output pairs are not used in this project).
* IN0 is CV0 input, attenuated by POT0, OUT0 is quantrized output CV0
* IN4 is trigger input for CV0
* OUT4 is trigger output for CV0
* POT4 controls scale
* PUSH0 is a trigger override for CV0
* PUSH2 toggles trigger mode :
	* Auto : output changes when input changes (default)
	* Input : outpu only changes when it receives a trigger input
* PUSH3 toggles ARP mode :
	* OFF : output CV will follow input CV as close as possible (default)
	* ON : the output CV scale is mapped to a linear CV input scale, so that every note in the scale is equally spaced.
		Note : This is useful e.g. for Arpegiator modes, where you want all notes to be triggered 
## Development guidelines
### Git workflow
Since PEPPER's git integration is very limited and has no way of directly accessing the Internet, here's the development workflow as a workaround.
* Follow the Installation guide above
* Edit and test the code with the in-browser IDE
* [Optional] Commit locally on Bela if you want, to track you own dev progress
* Copy the edited code to your local computer
	* `scp root@bela.local:Bela/projects/pepper-quantizer/* <local_folder>/`
* Commit the files and push on your local computer
### Commit guidelines
* Every commit on `main` should be working, without known critical bugs
* Every releasable version should be tagged with `v<maj>.<min>` version number. README file must be updated at each release, reflecting features and enhancements.
