// Libraries
#include <FastLED.h> //https://github.com/FastLED/FastLED
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <SoftwareSerial.h>
#include "const.h"

const int stripPinVert = PIN_BANDEAU_VERT;
const int stripPinHor = PIN_BANDEAU_HOR;
const int pinButton = PIN_INTER;
// Objects
CRGB ledsVert[NUM_LEDS_VERT];
CRGB ledsHor[NUM_LEDS_HOR];

void ledsVertOff() { //Eteint le bandeau vertical
  for(byte i = 0; i < NUM_LEDS_VERT; ++i) {
    ledsVert[i].setRGB(0,0,0);
  }
  FastLED.show();
}

void ledsHorOff() { //Eteint le bandeau horizontal
  for(byte i = 0; i < NUM_LEDS_HOR; ++i) {
    ledsHor[i].setRGB(0,0,0);
  }
  FastLED.show();
}

void debug() { //fonction de debuggage des leds
  for(byte j = 0; j < 50; ++j) {
    ledsVertOff();
    ledsHorOff();
    ledsHor[j].setRGB(170, 0, 255);
    ledsVert[j].setRGB(170, 0, 255);
    Serial.println(j);
    FastLED.show();
    delay(500);
  }

}

void litDrawer(const byte drawer, const float* drawers) {
  ledsVertOff();

  float CMStart = 0;
  for (byte i = 0; i < drawer; ++i) { //Définit la distance à laquelle il faut commencer à allumer les leds
    CMStart = CMStart + drawers[i];
  }
  float CMEnd = CMStart + drawers[drawer]; //Définit la distance à laquelle il faut arreter d'allumer les leds

  byte start = round(CMStart * LED_TO_CM); //Convertit la distance en numéro de led
  byte end = round(CMEnd * LED_TO_CM);

  for (byte i = start; (i < end && i < NUM_LEDS_VERT); i++) { //Allume les leds entre le début et la fin des leds à allumer
    ledsVert[i].setRGB(RED_VERTICAL, GREEN_VERTICAL, BLUE_VERTICAL);
  }
  FastLED.show();
}

void litColumn(const byte column, const float* columns) {
  ledsHorOff();

  float CMStart = 0;
  for (byte i = 0; i < column; ++i) { //Définit la distance à laquelle il faut commencer à allumer les leds
    CMStart = CMStart + columns[i];
  }
  float CMEnd = CMStart + columns[column]; //Définit la distance à laquelle il faut arreter d'allumer les leds

  byte start = round(CMStart * LED_TO_CM); //Convertit la distance en numéro de led
  byte end = round(CMEnd * LED_TO_CM);

  for (byte i = start; i < end && i < NUM_LEDS_HOR; ++i) {
    ledsHor[i].setRGB(RED_HORIZONTAL, GREEN_HORIZONTAL, BLUE_HORIZONTAL);
  }
  FastLED.show();
}

const char acceptedChar[13] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '!', '?', ';'};
static byte parsedData[3] = {};

byte *dataReceive() {
  char receivedChar;                                        // caractère tampon pour le stockage des données
  byte index = 0;                                            // index du buffer de données
  char data[DATA_MAX_SIZE];
  while (Serial.available() > 0 && index < DATA_MAX_SIZE) { // on lit tant qu'il y a des caractères valides sur le port série
    receivedChar = Serial.read();
    delay(20);
    data[index] = receivedChar;                             // Si le caratère n'est pas celui de fin de trame, on l'ajoute au tableau de caractères
    index++;
    }

  char trueData[DATA_MAX_SIZE];
  char length = 0;
    for(byte i = 0; i < index+1; ++i) {
      bool isIn = false;
      char c = data[i];
      for (byte j = 0; j < 13; j++) {
        char k = acceptedChar[j];
        if (k == c) {
          isIn = true;
          break;
        }
      }
      if (isIn) {
        trueData[length] = data[i];
        length++;
      }
    }

    parsedData[0] = trueData[1]-48;
    parsedData[1] = trueData[3]-48;
    parsedData[2] = trueData[5]-48;
    return parsedData;
}

void interButton() {
    Serial.print('.');
    delay(10);
    for(byte i = 0; i < NUM_LEDS_VERT; ++i) {
      ledsVert[i].setRGB(0, 0, 0);
      ledsHor[i].setRGB(0, 0, 0);
    }
    FastLED.show();
}

void setup() {
  
  pinMode(stripPinVert, OUTPUT);
  pinMode(stripPinHor, OUTPUT);
  attachInterrupt(digitalPinToInterrupt(pinButton), interButton, FALLING);
  // Init USB Série
  Serial.begin(9600);
  // Init bandeau leds
  FastLED.addLeds<LED_TYPE, stripPinVert, COLOR_ORDER>(ledsVert, NUM_LEDS_VERT);
  FastLED.addLeds<LED_TYPE, stripPinHor, COLOR_ORDER>(ledsHor, NUM_LEDS_HOR);
  FastLED.setBrightness(BRIGHTNESS);

  ledsVertOff();
  ledsHorOff();
}

float drawers[10] = {0, DRAW1_CM, DRAW1_CM, DRAW1_CM, DRAW2_CM, DRAW2_CM, DRAW2_CM, DRAW2_CM, DRAW3_CM, DRAW3_CM};
float colDrawerT1[10] = {0, ORANGE_SIZE, ORANGE_SIZE, ORANGE_SIZE, ORANGE_SIZE, ORANGE_SEP_SIZE, ORANGE_SIZE, ORANGE_SIZE, ORANGE_SIZE, ORANGE_SIZE};
float colDrawerT2[7] = {0, GRAY_SIZE, GRAY_SIZE, GRAY_SIZE, GRAY_SIZE, GRAY_SIZE, GRAY_SIZE};
float colDrawerT3[2] = {0, DRAW_SIZE};
float *colDrawers[9] = {colDrawerT1, colDrawerT1, colDrawerT1, colDrawerT2, colDrawerT2, colDrawerT2, colDrawerT3, colDrawerT3, colDrawerT3};

void loop() {
  if(Serial.available()) {
    byte *parsedData = dataReceive();
    byte drawer = parsedData[0];
    Serial.println(parsedData[0]);
    Serial.println(parsedData[1]);
    byte column = parsedData[1];
    litDrawer(drawer, drawers);
    litColumn(column, colDrawers[drawer-1]);
  }
  //debug();
}