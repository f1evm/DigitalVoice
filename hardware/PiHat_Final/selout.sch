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
Sheet 6 6
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
L SKY13374 U6
U 1 1 58EEFD37
P 3200 3600
F 0 "U6" H 3200 2950 60  0000 C CNN
F 1 "SKY13374" H 3200 4250 60  0000 C CNN
F 2 "RFBRD:QFN_12_2mmx2mm_0.5PITCH" H 3150 3600 60  0001 C CNN
F 3 "" H 3150 3600 60  0001 C CNN
	1    3200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4100 3900 4100
Wire Wire Line
	2700 3500 2500 3500
Wire Wire Line
	2500 3500 2500 4200
$Comp
L GND #PWR045
U 1 1 58EEFDE7
P 2500 4200
F 0 "#PWR045" H 2500 3950 50  0001 C CNN
F 1 "GND" H 2500 4050 50  0000 C CNN
F 2 "" H 2500 4200 50  0000 C CNN
F 3 "" H 2500 4200 50  0000 C CNN
	1    2500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4100 2500 4100
Connection ~ 2500 4100
Wire Wire Line
	2700 3700 2500 3700
Connection ~ 2500 3700
Wire Wire Line
	3900 3700 3900 4200
Wire Wire Line
	3700 3700 3900 3700
Connection ~ 3900 4100
$Comp
L GND #PWR046
U 1 1 58EEFE2B
P 3900 4200
F 0 "#PWR046" H 3900 3950 50  0001 C CNN
F 1 "GND" H 3900 4050 50  0000 C CNN
F 2 "" H 3900 4200 50  0000 C CNN
F 3 "" H 3900 4200 50  0000 C CNN
	1    3900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3900 4000 3900
Wire Wire Line
	2700 3900 2400 3900
Text GLabel 4000 3900 2    60   Input ~ 0
TX_PWR
Text GLabel 2400 3900 0    60   Input ~ 0
RXI
Wire Wire Line
	3700 3100 3800 3100
Wire Wire Line
	3700 3300 4100 3300
Text GLabel 3800 3100 2    60   Input ~ 0
SEL_1
Text GLabel 4100 3300 2    60   Input ~ 0
SEL_2
Wire Wire Line
	3700 3500 3800 3500
$Comp
L +3V3 #PWR047
U 1 1 58EEFEEA
P 3800 3500
F 0 "#PWR047" H 3800 3350 50  0001 C CNN
F 1 "+3V3" H 3800 3640 50  0000 C CNN
F 2 "" H 3800 3500 50  0000 C CNN
F 3 "" H 3800 3500 50  0000 C CNN
	1    3800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3300 2000 3300
$Comp
L SMACONN J1
U 1 1 58EEFF3A
P 1600 3400
F 0 "J1" H 1600 3200 60  0000 C CNN
F 1 "SMACONN" H 1600 3600 60  0000 C CNN
F 2 "RF BW Filter:SMA_Edge_Mount" H 1600 3400 60  0001 C CNN
F 3 "" H 1600 3400 60  0001 C CNN
	1    1600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3500 2100 3500
Wire Wire Line
	2100 3500 2100 3600
$Comp
L GND #PWR048
U 1 1 58EF0036
P 2100 3600
F 0 "#PWR048" H 2100 3350 50  0001 C CNN
F 1 "GND" H 2100 3450 50  0000 C CNN
F 2 "" H 2100 3600 50  0000 C CNN
F 3 "" H 2100 3600 50  0000 C CNN
	1    2100 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
