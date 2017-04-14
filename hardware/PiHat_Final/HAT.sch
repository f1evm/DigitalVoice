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
Sheet 3 6
Title ""
Date "15 nov 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L USB_OTG-RESCUE-RPi_Hat P1
U 1 1 58E977AB
P 850 3900
F 0 "P1" H 1175 3775 50  0000 C CNN
F 1 "USB_OTG" H 850 4100 50  0000 C CNN
F 2 "Connect:USB_Micro-B" V 800 3800 50  0001 C CNN
F 3 "" V 800 3800 50  0000 C CNN
	1    850  3900
	0    -1   -1   0   
$EndComp
NoConn ~ 1150 3800
NoConn ~ 1150 3900
NoConn ~ 1150 4000
Wire Wire Line
	750  3500 750  3400
Wire Wire Line
	750  3400 1250 3400
Wire Wire Line
	1250 3400 1250 3700
Wire Wire Line
	1150 3700 1350 3700
Wire Wire Line
	1150 4100 1150 4200
Wire Wire Line
	1150 4200 1550 4200
Wire Wire Line
	1350 3700 1350 3800
Connection ~ 1250 3700
$Comp
L GND #PWR01
U 1 1 58E977AC
P 1350 3800
F 0 "#PWR01" H 1350 3550 50  0001 C CNN
F 1 "GND" H 1350 3650 50  0000 C CNN
F 2 "" H 1350 3800 50  0000 C CNN
F 3 "" H 1350 3800 50  0000 C CNN
	1    1350 3800
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58E977AD
P 1450 4450
F 0 "C1" H 1475 4550 50  0000 L CNN
F 1 "10uF" H 1475 4350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1488 4300 50  0001 C CNN
F 3 "" H 1450 4450 50  0000 C CNN
	1    1450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4200 1450 4300
Wire Wire Line
	1450 4600 1450 4700
$Comp
L GND #PWR02
U 1 1 58E977AE
P 1450 4700
F 0 "#PWR02" H 1450 4450 50  0001 C CNN
F 1 "GND" H 1450 4550 50  0000 C CNN
F 2 "" H 1450 4700 50  0000 C CNN
F 3 "" H 1450 4700 50  0000 C CNN
	1    1450 4700
	1    0    0    -1  
$EndComp
Connection ~ 1450 4200
$Comp
L +5V #PWR03
U 1 1 58E977AF
P 1550 4200
F 0 "#PWR03" H 1550 4050 50  0001 C CNN
F 1 "+5V" H 1550 4340 50  0000 C CNN
F 2 "" H 1550 4200 50  0000 C CNN
F 3 "" H 1550 4200 50  0000 C CNN
	1    1550 4200
	1    0    0    -1  
$EndComp
Wire Bus Line
	500  2800 4300 2800
Wire Bus Line
	5900 2800 11200 2800
$Comp
L MCP73833 U2
U 1 1 58E977B0
P 3600 4000
F 0 "U2" H 3600 3500 60  0000 C CNN
F 1 "MCP73833" H 3600 4500 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-10-1EP_3x3mm_Pitch0.5mm" H 3600 4000 60  0001 C CNN
F 3 "" H 3600 4000 60  0001 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3800 2900 3800
Wire Wire Line
	2900 3800 2900 3500
Wire Wire Line
	3000 3600 2900 3600
Connection ~ 2900 3600
$Comp
L +5V #PWR04
U 1 1 58E977B1
P 2900 3500
F 0 "#PWR04" H 2900 3350 50  0001 C CNN
F 1 "+5V" H 2900 3640 50  0000 C CNN
F 2 "" H 2900 3500 50  0000 C CNN
F 3 "" H 2900 3500 50  0000 C CNN
	1    2900 3500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 58E977B2
P 2600 3000
F 0 "#PWR05" H 2600 2850 50  0001 C CNN
F 1 "+5V" H 2600 3140 50  0000 C CNN
F 2 "" H 2600 3000 50  0000 C CNN
F 3 "" H 2600 3000 50  0000 C CNN
	1    2600 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 58E977B3
P 2300 3000
F 0 "#PWR06" H 2300 2850 50  0001 C CNN
F 1 "+5V" H 2300 3140 50  0000 C CNN
F 2 "" H 2300 3000 50  0000 C CNN
F 3 "" H 2300 3000 50  0000 C CNN
	1    2300 3000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58E977B4
P 2600 3750
F 0 "R2" V 2680 3750 50  0000 C CNN
F 1 "1K" V 2600 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2530 3750 50  0001 C CNN
F 3 "" H 2600 3750 50  0000 C CNN
	1    2600 3750
	1    0    0    -1  
$EndComp
$Comp
L LED-RESCUE-RPi_Hat D2
U 1 1 58E977B5
P 2600 3300
AR Path="/58E977B5" Ref="D2"  Part="1" 
AR Path="/58E9654B/58E977B5" Ref="D2"  Part="1" 
F 0 "D2" H 2600 3400 50  0000 C CNN
F 1 "LED" H 2600 3200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 2600 3300 50  0001 C CNN
F 3 "" H 2600 3300 50  0000 C CNN
	1    2600 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 3900 2600 4000
Wire Wire Line
	2600 4000 3000 4000
Wire Wire Line
	2600 3000 2600 3100
$Comp
L R R1
U 1 1 58E977B6
P 2300 3750
F 0 "R1" V 2380 3750 50  0000 C CNN
F 1 "1K" V 2300 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2230 3750 50  0001 C CNN
F 3 "" H 2300 3750 50  0000 C CNN
	1    2300 3750
	1    0    0    -1  
$EndComp
$Comp
L LED-RESCUE-RPi_Hat D1
U 1 1 58E977B7
P 2300 3300
AR Path="/58E977B7" Ref="D1"  Part="1" 
AR Path="/58E9654B/58E977B7" Ref="D1"  Part="1" 
F 0 "D1" H 2300 3400 50  0000 C CNN
F 1 "LED" H 2300 3200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 2300 3300 50  0001 C CNN
F 3 "" H 2300 3300 50  0000 C CNN
	1    2300 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 3900 2300 4200
Wire Wire Line
	2300 4200 3000 4200
Wire Wire Line
	2300 3100 2300 3000
Wire Wire Line
	3000 4400 2900 4400
Wire Wire Line
	2900 4400 2900 4500
$Comp
L GND #PWR07
U 1 1 58E977B8
P 2900 4500
F 0 "#PWR07" H 2900 4250 50  0001 C CNN
F 1 "GND" H 2900 4350 50  0000 C CNN
F 2 "" H 2900 4500 50  0000 C CNN
F 3 "" H 2900 4500 50  0000 C CNN
	1    2900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4400 4300 4400
Wire Wire Line
	4300 4400 4300 4500
$Comp
L R R3
U 1 1 58E977B9
P 4300 4650
F 0 "R3" V 4380 4650 50  0000 C CNN
F 1 "1K" V 4300 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4230 4650 50  0001 C CNN
F 3 "" H 4300 4650 50  0000 C CNN
	1    4300 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4800 4300 4900
$Comp
L GND #PWR08
U 1 1 58E977BA
P 4300 4900
F 0 "#PWR08" H 4300 4650 50  0001 C CNN
F 1 "GND" H 4300 4750 50  0000 C CNN
F 2 "" H 4300 4900 50  0000 C CNN
F 3 "" H 4300 4900 50  0000 C CNN
	1    4300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3600 5900 3600
Wire Wire Line
	4200 3800 4400 3800
Wire Wire Line
	4400 3800 4400 3600
Connection ~ 4400 3600
Wire Wire Line
	4200 4000 4800 4000
Wire Wire Line
	4200 4200 4600 4200
Wire Wire Line
	4600 4200 4600 3400
$Comp
L R R4
U 1 1 58E977BB
P 4600 3250
F 0 "R4" V 4680 3250 50  0000 C CNN
F 1 "1K" V 4600 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4530 3250 50  0001 C CNN
F 3 "" H 4600 3250 50  0000 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3100 4600 3000
$Comp
L LED-RESCUE-RPi_Hat D3
U 1 1 58E977BC
P 4400 3000
AR Path="/58E977BC" Ref="D3"  Part="1" 
AR Path="/58E9654B/58E977BC" Ref="D3"  Part="1" 
F 0 "D3" H 4400 3100 50  0000 C CNN
F 1 "LED" H 4400 2900 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4400 3000 50  0001 C CNN
F 3 "" H 4400 3000 50  0000 C CNN
	1    4400 3000
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR09
U 1 1 58E977BD
P 4100 3000
F 0 "#PWR09" H 4100 2850 50  0001 C CNN
F 1 "+5V" H 4100 3140 50  0000 C CNN
F 2 "" H 4100 3000 50  0000 C CNN
F 3 "" H 4100 3000 50  0000 C CNN
	1    4100 3000
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 58E977BE
P 4950 4000
F 0 "R5" V 5030 4000 50  0000 C CNN
F 1 "1K" V 4950 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4880 4000 50  0001 C CNN
F 3 "" H 4950 4000 50  0000 C CNN
	1    4950 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 4000 5200 4000
Wire Wire Line
	5200 4000 5200 4200
Wire Wire Line
	5100 4200 5300 4200
Wire Wire Line
	5300 4200 5300 4300
Connection ~ 5200 4200
$Comp
L R R6
U 1 1 58E977BF
P 5300 4450
F 0 "R6" V 5380 4450 50  0000 C CNN
F 1 "150K" V 5300 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5230 4450 50  0001 C CNN
F 3 "" H 5300 4450 50  0000 C CNN
	1    5300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4200 5100 4500
Wire Wire Line
	5300 4600 5300 4900
Wire Wire Line
	5300 4900 5100 4900
Wire Wire Line
	5100 4900 5100 4600
Wire Wire Line
	5200 4900 5200 5000
Connection ~ 5200 4900
$Comp
L GND #PWR010
U 1 1 58E977C0
P 5200 5000
F 0 "#PWR010" H 5200 4750 50  0001 C CNN
F 1 "GND" H 5200 4850 50  0000 C CNN
F 2 "" H 5200 5000 50  0000 C CNN
F 3 "" H 5200 5000 50  0000 C CNN
	1    5200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3600 5700 4200
$Comp
L C C2
U 1 1 58E977C1
P 5700 4350
F 0 "C2" H 5725 4450 50  0000 L CNN
F 1 "10uF" H 5725 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5738 4200 50  0001 C CNN
F 3 "" H 5700 4350 50  0000 C CNN
	1    5700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4500 5700 4600
$Comp
L GND #PWR011
U 1 1 58E977C2
P 5700 4600
F 0 "#PWR011" H 5700 4350 50  0001 C CNN
F 1 "GND" H 5700 4450 50  0000 C CNN
F 2 "" H 5700 4600 50  0000 C CNN
F 3 "" H 5700 4600 50  0000 C CNN
	1    5700 4600
	1    0    0    -1  
$EndComp
Connection ~ 5700 3600
Wire Bus Line
	6550 2800 6550 6550
Wire Bus Line
	6550 5250 500  5250
$Comp
L TPS61027 U3
U 1 1 58E977C3
P 8800 3900
F 0 "U3" H 8850 3400 60  0000 C CNN
F 1 "TPS61027" H 8850 4400 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-10-1EP_3x3mm_Pitch0.5mm" H 8800 3900 60  0001 C CNN
F 3 "" H 8800 3900 60  0001 C CNN
	1    8800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4300 8200 4300
Wire Wire Line
	8200 4300 8200 4400
$Comp
L GND #PWR012
U 1 1 58E977C4
P 8200 4400
F 0 "#PWR012" H 8200 4150 50  0001 C CNN
F 1 "GND" H 8200 4250 50  0000 C CNN
F 2 "" H 8200 4400 50  0000 C CNN
F 3 "" H 8200 4400 50  0000 C CNN
	1    8200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3500 9400 3300
Wire Wire Line
	9400 3300 9600 3300
Wire Wire Line
	9600 3300 9600 3400
$Comp
L GND #PWR013
U 1 1 58E977C5
P 9600 3400
F 0 "#PWR013" H 9600 3150 50  0001 C CNN
F 1 "GND" H 9600 3250 50  0000 C CNN
F 2 "" H 9600 3400 50  0000 C CNN
F 3 "" H 9600 3400 50  0000 C CNN
	1    9600 3400
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 58E977C6
P 9800 3700
F 0 "L1" V 9750 3700 50  0000 C CNN
F 1 "6.8uH" V 9900 3700 50  0000 C CNN
F 2 "inductor:BOURNES_SRN4018" H 9800 3700 50  0001 C CNN
F 3 "" H 9800 3700 50  0000 C CNN
	1    9800 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 3700 9400 3700
Wire Wire Line
	10200 3700 10100 3700
Wire Wire Line
	10200 3300 10200 3700
Wire Wire Line
	6950 2900 6950 3100
Wire Wire Line
	6950 3000 7050 3000
$Comp
L C C3
U 1 1 58E977C7
P 6950 3250
F 0 "C3" H 6975 3350 50  0000 L CNN
F 1 "10uF" H 6975 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6988 3100 50  0001 C CNN
F 3 "" H 6950 3250 50  0000 C CNN
	1    6950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3400 6950 3500
$Comp
L GND #PWR014
U 1 1 58E977C8
P 6950 3500
F 0 "#PWR014" H 6950 3250 50  0001 C CNN
F 1 "GND" H 6950 3350 50  0000 C CNN
F 2 "" H 6950 3500 50  0000 C CNN
F 3 "" H 6950 3500 50  0000 C CNN
	1    6950 3500
	1    0    0    -1  
$EndComp
Connection ~ 6950 3000
Text GLabel 7050 3000 2    60   Input ~ 0
VBATFILT
Wire Wire Line
	6850 2900 6950 2900
Text GLabel 6850 2900 0    60   Input ~ 0
VBAT
Wire Wire Line
	8300 3500 8200 3500
Text GLabel 8200 3500 0    60   Input ~ 0
VBATFILT
Wire Wire Line
	7400 3700 8300 3700
Wire Wire Line
	9400 3900 10550 3900
Wire Wire Line
	10550 3900 10550 4000
$Comp
L GND #PWR015
U 1 1 58E977CD
P 10550 4000
F 0 "#PWR015" H 10550 3750 50  0001 C CNN
F 1 "GND" H 10550 3850 50  0000 C CNN
F 2 "" H 10550 4000 50  0000 C CNN
F 3 "" H 10550 4000 50  0000 C CNN
	1    10550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4300 9500 4300
Text GLabel 9500 4300 2    60   Input ~ 0
VBATFILT
Text GLabel 7400 3700 0    60   Input ~ 0
5VU
$Comp
L C C4
U 1 1 58E977D1
P 8500 5000
F 0 "C4" H 8525 5100 50  0000 L CNN
F 1 "10uF" H 8525 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8538 4850 50  0001 C CNN
F 3 "" H 8500 5000 50  0000 C CNN
	1    8500 5000
	1    0    0    -1  
$EndComp
$Comp
L CP1 C5
U 1 1 58E977D2
P 8800 5000
F 0 "C5" H 8825 5100 50  0000 L CNN
F 1 "47uF" H 8825 4900 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_5x5.3" H 8800 5000 50  0001 C CNN
F 3 "" H 8800 5000 50  0000 C CNN
	1    8800 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4750 8900 4750
Wire Wire Line
	8800 4850 8800 4750
Connection ~ 8800 4750
Wire Wire Line
	8500 4850 8500 4750
Connection ~ 8500 4750
Wire Wire Line
	8500 5150 8500 5250
Wire Wire Line
	8500 5250 8800 5250
Wire Wire Line
	8800 5250 8800 5150
Wire Wire Line
	8650 5250 8650 5350
Connection ~ 8650 5250
$Comp
L GND #PWR016
U 1 1 58E977D3
P 8650 5350
F 0 "#PWR016" H 8650 5100 50  0001 C CNN
F 1 "GND" H 8650 5200 50  0000 C CNN
F 2 "" H 8650 5350 50  0000 C CNN
F 3 "" H 8650 5350 50  0000 C CNN
	1    8650 5350
	1    0    0    -1  
$EndComp
Text GLabel 8400 4750 0    60   Input ~ 0
5VU
Wire Wire Line
	8900 4750 8900 4650
$Comp
L +5V #PWR017
U 1 1 58E977D4
P 8900 4650
F 0 "#PWR017" H 8900 4500 50  0001 C CNN
F 1 "+5V" H 8900 4790 50  0000 C CNN
F 2 "" H 8900 4650 50  0000 C CNN
F 3 "" H 8900 4650 50  0000 C CNN
	1    8900 4650
	1    0    0    -1  
$EndComp
Wire Bus Line
	6550 6550 6950 6550
$Comp
L +5V #PWR018
U 1 1 58E977D5
P 850 6200
F 0 "#PWR018" H 850 6050 50  0001 C CNN
F 1 "+5V" H 850 6340 50  0000 C CNN
F 2 "" H 850 6200 50  0000 C CNN
F 3 "" H 850 6200 50  0000 C CNN
	1    850  6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 58E977D6
P 850 6600
F 0 "#PWR019" H 850 6350 50  0001 C CNN
F 1 "GND" H 850 6450 50  0000 C CNN
F 2 "" H 850 6600 50  0000 C CNN
F 3 "" H 850 6600 50  0000 C CNN
	1    850  6600
	1    0    0    -1  
$EndComp
Text GLabel 750  6400 0    60   Input ~ 0
VOL
Text GLabel 5900 3600 2    60   Input ~ 0
VBP_SW
Wire Bus Line
	2600 7750 2600 5250
$Comp
L CONN_01X02 P2
U 1 1 58E977D7
P 2800 6450
F 0 "P2" H 2800 6600 50  0000 C CNN
F 1 "BATT" V 2900 6450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 2800 6450 50  0001 C CNN
F 3 "" H 2800 6450 50  0000 C CNN
	1    2800 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 6500 3100 6500
Wire Wire Line
	3100 6500 3100 6600
$Comp
L GND #PWR020
U 1 1 58E977D8
P 3100 6600
F 0 "#PWR020" H 3100 6350 50  0001 C CNN
F 1 "GND" H 3100 6450 50  0000 C CNN
F 2 "" H 3100 6600 50  0000 C CNN
F 3 "" H 3100 6600 50  0000 C CNN
	1    3100 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6400 3200 6400
Text GLabel 3200 6400 2    60   Input ~ 0
VBP_SW
Text Notes 7350 7500 0    60   Italic 12
Pi Hat Schematic
Text Notes 7450 7250 0    60   ~ 0
1 / 1
Text Notes 10550 7650 0    60   ~ 12
A
Text Notes 500  7750 0    60   ~ 12
SPST Rotary Encoder (Potentiometer)
Text Notes 2650 7750 0    60   ~ 12
Battery Molex Connection
Text Notes 6600 6500 0    60   ~ 12
5V & 3V3 Conversion
Text Notes 500  5200 0    60   ~ 12
USB & Charging
Text Notes 5950 2750 0    60   ~ 12
Radio & Match
$Comp
L MCP3021 U1
U 1 1 58E977DF
P 1550 1250
F 0 "U1" H 1650 900 60  0000 C CNN
F 1 "MCP3021" H 1800 1550 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 1550 1250 60  0001 C CNN
F 3 "" H 1550 1250 60  0001 C CNN
	1    1550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 800  1550 700 
$Comp
L +5V #PWR021
U 1 1 58E977E0
P 1550 700
F 0 "#PWR021" H 1550 550 50  0001 C CNN
F 1 "+5V" H 1550 840 50  0000 C CNN
F 2 "" H 1550 700 50  0000 C CNN
F 3 "" H 1550 700 50  0000 C CNN
	1    1550 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1700 1550 1800
$Comp
L GND #PWR022
U 1 1 58E977E1
P 1550 1800
F 0 "#PWR022" H 1550 1550 50  0001 C CNN
F 1 "GND" H 1550 1650 50  0000 C CNN
F 2 "" H 1550 1800 50  0000 C CNN
F 3 "" H 1550 1800 50  0000 C CNN
	1    1550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1250 750  1250
Text GLabel 750  1250 0    60   Input ~ 0
VOL
Text GLabel 2150 1400 2    60   Input ~ 0
SDA
Text GLabel 2150 1100 2    60   Input ~ 0
SCL
Wire Wire Line
	2150 1100 2050 1100
Wire Wire Line
	2050 1400 2150 1400
Wire Wire Line
	2300 3500 2300 3600
Wire Wire Line
	2600 3600 2600 3500
$Comp
L CONN_01X02 P3
U 1 1 58E977E2
P 4900 4550
F 0 "P3" H 4900 4700 50  0000 C CNN
F 1 "THERM" V 5000 4550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4900 4550 50  0001 C CNN
F 3 "" H 4900 4550 50  0000 C CNN
	1    4900 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	10200 3300 10450 3300
Text GLabel 10450 3300 2    60   Input ~ 0
VBATFILT
Wire Wire Line
	4100 3000 4200 3000
Wire Notes Line
	4300 2800 5900 2800
Wire Notes Line
	2500 500  2500 2800
$Sheet
S 2750 950  900  900 
U 58E9BB3A
F0 "RADIO" 60
F1 "rdo.sch" 60
$EndSheet
$Sheet
S 3900 950  950  900 
U 58E9BDCD
F0 "AMPLIFIER" 60
F1 "amp.sch" 60
$EndSheet
$Sheet
S 5100 950  1050 900 
U 58E9C00E
F0 "ANTENNA" 60
F1 "selout.sch" 60
$EndSheet
$Comp
L ROTARY_ENCODER_SWITCH SW1
U 1 1 58EE67F8
P 1150 6400
F 0 "SW1" H 1150 6660 50  0000 C CNN
F 1 "PWR_VOL" H 1150 6140 50  0000 C CNN
F 2 "rotary_potentiometer:rotary_potentiometer" H 1050 6560 50  0001 C CNN
F 3 "" H 1150 6660 50  0001 C CNN
	1    1150 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6600 850  6500
Wire Wire Line
	850  6400 750  6400
Wire Wire Line
	850  6300 850  6200
Wire Wire Line
	1450 6300 1550 6300
Wire Wire Line
	1450 6500 1550 6500
Text GLabel 1550 6300 2    60   Input ~ 0
VBP_SW
Text GLabel 1550 6500 2    60   Input ~ 0
VBAT
NoConn ~ 8300 3900
NoConn ~ 8300 4100
NoConn ~ 9400 4100
$EndSCHEMATC
