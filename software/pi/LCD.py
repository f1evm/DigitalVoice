import Adafruit_CharLCD as LCD
import time

last_interaction = time.time()
FREQ_STEP = 0.05 # Mhz
SCREEN_TIMEOUT = 2 # Seconds

class Display(object):
    def __init__(self):
        self.lcd = LCD.Adafruit_CharLCDPlate()
        self.backlight_enabled = True

    def enable_backlight(self):
        if not self.backlight_enabled:
            self.lcd.set_color(1.0,0.0,0.0)
        self.backlight_enabled = True

    def disable_backlight(self):
        if self.backlight_enabled:
            self.lcd.set_color(0.0,0.0,0.0)
        self.backlight_enabled = False

    def update(self):
        self.enable_backlight()
        self.lcd.clear()
        self.lcd.message('%.3f MHz' % frequency)
        if is_transmitting:
            self.lcd.message('\nTransmitting')

frequency = 433.0
is_transmitting = False
display = Display()
display.update()

while True:
    if display.lcd.is_pressed(LCD.UP):
        frequency += FREQ_STEP
        last_interaction = time.time()
        display.update()
    if display.lcd.is_pressed(LCD.DOWN):
        last_interaction = time.time()
        frequency -= FREQ_STEP
        display.update()
    if display.lcd.is_pressed(LCD.SELECT):
        last_interaction = time.time()
        is_transmitting = not is_transmitting # Toggle
        display.update()
    if time.time() > last_interaction + SCREEN_TIMEOUT:
        print("Timeout!")
        display.disable_backlight()
        
