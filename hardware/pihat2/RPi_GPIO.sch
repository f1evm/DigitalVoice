EESchema Schematic File Version 2
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
LIBS:RFT
LIBS:RPi_Hat-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
P 2000 1000
F 0 "J2" H 2750 1250 60  0000 C CNN
F 1 "RPi_GPIO" H 2750 1150 60  0000 C CNN
F 2 "RPi_Hat:Pin_Header_Straight_2x20" H 2000 1000 60  0001 C CNN
F 3 "" H 2000 1000 60  0000 C CNN
	1    2000 1000
	1    0    0    -1  
$EndComp
Text Notes 2250 3100 0    60   Italic 0
Thru-Hole Connector
Wire Wire Line
	3700 1000 3900 1000
Wire Wire Line
	3900 900  3900 1100
Wire Wire Line
	3900 1100 3700 1100
Connection ~ 3900 1000
$Comp
L +5V #PWR01
U 1 1 58E2C51D
P 3900 900
F 0 "#PWR01" H 3900 750 50  0001 C CNN
F 1 "+5V" H 3900 1040 50  0000 C CNN
F 2 "" H 3900 900 50  0000 C CNN
F 3 "" H 3900 900 50  0000 C CNN
	1    3900 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1000 1700 1000
Wire Wire Line
	1700 1000 1700 900 
$Comp
L +3V3 #PWR02
U 1 1 58E2C541
P 1700 900
F 0 "#PWR02" H 1700 750 50  0001 C CNN
F 1 "+3V3" H 1700 1040 50  0000 C CNN
F 2 "" H 1700 900 50  0000 C CNN
F 3 "" H 1700 900 50  0000 C CNN
	1    1700 900 
	1    0    0    -1  
$EndComp
$Sheet
S 9750 600  500  450 
U 58E2C5D1
F0 "Radio" 60
F1 "file58E2C5D0.sch" 60
$EndSheet
Wire Wire Line
	1800 1900 1700 1900
Wire Wire Line
	1800 1400 550  1400
Wire Wire Line
	550  1400 550  1500
$Comp
L GND #PWR03
U 1 1 58E2DD07
P 550 1500
F 0 "#PWR03" H 550 1250 50  0001 C CNN
F 1 "GND" H 550 1350 50  0000 C CNN
F 2 "" H 550 1500 50  0000 C CNN
F 3 "" H 550 1500 50  0000 C CNN
	1    550  1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1800 700  1800
Wire Wire Line
	700  1800 700  1700
$Comp
L +3V3 #PWR04
U 1 1 58E2DD2A
P 700 1700
F 0 "#PWR04" H 700 1550 50  0001 C CNN
F 1 "+3V3" H 700 1840 50  0000 C CNN
F 2 "" H 700 1700 50  0000 C CNN
F 3 "" H 700 1700 50  0000 C CNN
	1    700  1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2900 1700 2900
Wire Wire Line
	1700 2200 1700 3050
$Comp
L GND #PWR05
U 1 1 58E2DD54
P 1700 3050
F 0 "#PWR05" H 1700 2800 50  0001 C CNN
F 1 "GND" H 1700 2900 50  0000 C CNN
F 2 "" H 1700 3050 50  0000 C CNN
F 3 "" H 1700 3050 50  0000 C CNN
	1    1700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2400 4650 2400
Wire Wire Line
	4650 1200 4650 2700
Wire Wire Line
	3700 2600 4650 2600
Connection ~ 4650 2600
$Comp
L GND #PWR06
U 1 1 58E2DDA6
P 4650 2700
F 0 "#PWR06" H 4650 2450 50  0001 C CNN
F 1 "GND" H 4650 2550 50  0000 C CNN
F 2 "" H 4650 2700 50  0000 C CNN
F 3 "" H 4650 2700 50  0000 C CNN
	1    4650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1600 4650 1600
Connection ~ 4650 2400
Wire Wire Line
	3700 1900 4650 1900
Connection ~ 4650 1900
Wire Wire Line
	1800 2200 1700 2200
Connection ~ 1700 2900
Text GLabel 1700 1900 0    60   Input ~ 0
SDI
Wire Wire Line
	1800 2000 1350 2000
Wire Wire Line
	1800 2100 1700 2100
Text GLabel 1700 2100 0    60   Input ~ 0
SCLK
Text GLabel 1350 2000 0    60   Input ~ 0
SDO
Wire Wire Line
	3700 1200 4650 1200
Connection ~ 4650 1600
Wire Wire Line
	3700 2100 3800 2100
Text GLabel 3800 2100 2    60   Input ~ 0
nSEL
Wire Wire Line
	1200 2800 1800 2800
Wire Wire Line
	1800 2700 1600 2700
Text GLabel 1600 2700 0    60   Input ~ 0
SHDN
Text GLabel 1200 2800 0    60   Input ~ 0
nIRQ
Wire Wire Line
	1800 1100 1700 1100
Wire Wire Line
	1350 1200 1800 1200
Text GLabel 1700 1100 0    60   Input ~ 0
SDA
Text GLabel 1350 1200 0    60   Input ~ 0
SCL
$EndSCHEMATC
