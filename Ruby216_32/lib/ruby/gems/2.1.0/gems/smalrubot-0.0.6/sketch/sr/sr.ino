#include "Smalrubot.h"
#include <Servo.h>
#include "Adafruit_NeoPixel.h"
#include <avr/power.h>

#define DEFAULT_NEO_PIXEL_NUM 16
#define DEFAULT_NEO_PIXEL_PIN 5

Smalrubot smalrubot(DEFAULT_NEO_PIXEL_NUM, DEFAULT_NEO_PIXEL_PIN);

// Smalrubot.h doesn't handle TXRX. Setup a function to tell it to write to Serial.
void writeResponse(char *response) { Serial.println(response); }
void (*writeCallback)(char *str) = writeResponse;

void setup() {
  Serial.begin(19200);
  smalrubot.setupWrite(writeCallback);
}

void loop() {
  while(Serial.available() > 0) smalrubot.parse(Serial.read());
  Serial.flush();
}

