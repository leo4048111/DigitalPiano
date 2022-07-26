# A FPGA digital Piano/Synthesizer
## Tongji University CS Digital Logic Course Project
## Features
+ Chords √
+ Tone adjustment √
+ Octave selection(Four octaves) √
+ Keyboard control √
+ .3.5mm audio output √
+ Visualization √
+ Sound good to ear √
+ EZ to play √
+ Robust performance √
## Run prerequisites
+ Installed Vivado 2016+
+ This system is implemented on Digilent™ Nexy4 DDR board
+ You need a keyboard to play the notes, a 3.5mm jack speaker to play sound, and a VGA monitor for visualization
+ Open `.xpr` file, generate bitstream and write it to hardware, connect every required hardware, then the system should be running
## Keybinds
|Key|Type|Function|
| :-----| ----: | :----: |
|`ZSXDCVGBHNMJ`|hold|octave 1, note C ~ B|
|`Q2W3ER5T6Y7U`|hold|octave 2, note C ~ B|
|`space`|toggle|toggle octave 1\~2 and octave 3\~4|
|`F1`|toggle|increase overdrive level|
|`F2`|toggle|reduce overdrive level|
|`F3`|toggle|toggle tone|
|`Board switch J15`|toggle|run/stop/reset system|
## Notice
+ You can play at most 4 notes simultaneously
## Demo
You can check out demo for this system here: https://www.bilibili.com/video/BV1VL411c7Pk?spm_id_from=333.999.0.0
## Picture
![Picture](https://raw.githubusercontent.com/leo4048111/DigitalPiano/main/Picture/picture.png)

