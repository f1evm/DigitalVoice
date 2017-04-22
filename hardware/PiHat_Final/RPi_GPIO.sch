EESchema Schematic File Version 2
LIBS:RPi_Hat-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:RPi_Hat-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RPi_GPIO J2
U 1 1 5516AE26
P 7500 2700
F 0 "J2" H 8250 2950 60  0000 C CNN
F 1 "RPi_GPIO" H 8250 2850 60  0000 C CNN
F 2 "RPi_Hat:Pin_Header_Straight_2x20" H 7500 2700 60  0001 C CNN
F 3 "" H 7500 2700 60  0000 C CNN
	1    7500 2700
	1    0    0    -1  
$EndComp
Text Notes 7800 5000 0    60   Italic 0
Thru-Hole Connector
Wire Wire Line
	9200 2800 9300 2800
Wire Wire Line
	9300 2800 9300 2700
Wire Wire Line
	9200 2700 9400 2700
Connection ~ 9300 2700
Wire Wire Line
	7100 2700 7300 2700
$Comp
L +5V #PWR01
U 1 1 58FBDD1D
P 9400 2700
F 0 "#PWR01" H 9400 2550 50  0001 C CNN
F 1 "+5V" H 9400 2840 50  0000 C CNN
F 2 "" H 9400 2700 50  0001 C CNN
F 3 "" H 9400 2700 50  0001 C CNN
	1    9400 2700
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR02
U 1 1 58FBDD33
P 7200 2700
F 0 "#PWR02" H 7200 2550 50  0001 C CNN
F 1 "+3V3" H 7200 2840 50  0000 C CNN
F 2 "" H 7200 2700 50  0001 C CNN
F 3 "" H 7200 2700 50  0001 C CNN
	1    7200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3900 7200 3900
Wire Wire Line
	7200 3100 7200 4700
Wire Wire Line
	7300 4600 7200 4600
Connection ~ 7200 4600
$Comp
L GND #PWR03
U 1 1 58FBDD61
P 7200 4700
F 0 "#PWR03" H 7200 4450 50  0001 C CNN
F 1 "GND" H 7200 4550 50  0000 C CNN
F 2 "" H 7200 4700 50  0001 C CNN
F 3 "" H 7200 4700 50  0001 C CNN
	1    7200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3600 9300 3600
Wire Wire Line
	9300 2900 9300 4700
Wire Wire Line
	9200 4100 9300 4100
Connection ~ 9300 4100
Wire Wire Line
	9300 2900 9200 2900
Connection ~ 9300 3600
Wire Wire Line
	9300 3300 9200 3300
Connection ~ 9300 3300
Wire Wire Line
	7200 3100 7300 3100
Connection ~ 7200 3900
$Comp
L GND #PWR04
U 1 1 58FBDDDD
P 9300 4700
F 0 "#PWR04" H 9300 4450 50  0001 C CNN
F 1 "GND" H 9300 4550 50  0000 C CNN
F 2 "" H 9300 4700 50  0001 C CNN
F 3 "" H 9300 4700 50  0001 C CNN
	1    9300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2700 7100 3500
Wire Wire Line
	7100 3500 7300 3500
Connection ~ 7200 2700
Wire Wire Line
	9200 3800 9400 3800
Text GLabel 9400 3800 2    60   Input ~ 0
nSEL
Wire Wire Line
	7300 3600 7100 3600
Wire Wire Line
	7300 3800 7100 3800
Text GLabel 7100 3600 0    60   Input ~ 0
MOSI
Text GLabel 7100 3800 0    60   Input ~ 0
SCLK
Wire Wire Line
	7300 3700 6700 3700
Text GLabel 6700 3700 0    60   Input ~ 0
MISO
Wire Wire Line
	7300 4000 7100 4000
Text GLabel 7100 4000 0    60   Input ~ 0
nIRQ
Wire Wire Line
	7300 3400 7000 3400
Text GLabel 7000 3400 0    60   Input ~ 0
SHDN
$EndSCHEMATC
