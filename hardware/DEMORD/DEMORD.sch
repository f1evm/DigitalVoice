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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L SMACONN J?
U 1 1 58D03EE8
P 1350 2150
F 0 "J?" H 1350 1950 60  0000 C CNN
F 1 "SMACONN" H 1350 2350 60  0000 C CNN
F 2 "" H 1350 2150 60  0001 C CNN
F 3 "" H 1350 2150 60  0001 C CNN
	1    1350 2150
	1    0    0    -1  
$EndComp
$Comp
L Si4464 U?
U 1 1 58D0429B
P 8000 2600
F 0 "U?" H 8400 2150 60  0000 C CNN
F 1 "Si4464" H 8450 3100 60  0000 C CNN
F 2 "" H 8000 2600 60  0001 C CNN
F 3 "" H 8000 2600 60  0001 C CNN
	1    8000 2600
	1    0    0    -1  
$EndComp
NoConn ~ 8100 3200
NoConn ~ 8200 3200
NoConn ~ 7800 1950
NoConn ~ 7900 1950
Wire Wire Line
	8000 1850 8000 1950
Wire Wire Line
	7150 1850 8000 1850
Wire Wire Line
	7250 1850 7250 2400
Wire Wire Line
	7250 2400 7350 2400
Connection ~ 7250 1850
Text GLabel 7150 1850 0    60   Input ~ 0
GND
$Comp
L CRYSTAL_SMD X?
U 1 1 58D04305
P 8650 1700
F 0 "X?" H 8650 1790 50  0000 C CNN
F 1 "16 MHz" H 8680 1590 50  0000 L CNN
F 2 "" H 8650 1700 50  0000 C CNN
F 3 "" H 8650 1700 50  0000 C CNN
	1    8650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1950 8100 1500
Wire Wire Line
	8100 1500 8850 1500
Wire Wire Line
	8850 1500 8850 1700
Wire Wire Line
	8200 1950 8200 1700
Wire Wire Line
	8200 1700 8450 1700
Wire Wire Line
	8650 1800 8650 2000
Wire Wire Line
	8650 2000 8750 2000
Text GLabel 8750 2000 2    60   Input ~ 0
GND
Wire Wire Line
	7900 3200 7900 3300
Wire Wire Line
	7900 3300 7700 3300
Wire Wire Line
	7800 3200 7800 3500
Wire Wire Line
	7800 3400 8000 3400
Wire Wire Line
	8000 3400 8000 3200
Wire Wire Line
	7800 3500 7700 3500
Connection ~ 7800 3400
Text GLabel 7700 3300 0    60   Input ~ 0
PWRAMP
Text GLabel 7700 3500 0    60   Input ~ 0
3V3
Wire Wire Line
	8650 2400 8750 2400
Wire Wire Line
	8650 2600 8750 2600
Wire Wire Line
	8650 2800 8750 2800
Text GLabel 8750 2400 2    60   Input ~ 0
nSEL
Text GLabel 8750 2600 2    60   Input ~ 0
SDO
Text GLabel 8750 2800 2    60   Input ~ 0
nIRQ
Wire Wire Line
	8650 2700 9150 2700
Wire Wire Line
	8650 2500 9150 2500
Text GLabel 9150 2500 2    60   Input ~ 0
SDI
Text GLabel 9150 2700 2    60   Input ~ 0
SCLK
$Comp
L SKY13374 U?
U 1 1 58D0451D
P 3200 2450
F 0 "U?" H 3200 1800 60  0000 C CNN
F 1 "SKY13374" H 3200 3100 60  0000 C CNN
F 2 "" H 3150 2450 60  0001 C CNN
F 3 "" H 3150 2450 60  0001 C CNN
	1    3200 2450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
