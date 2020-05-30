#define SD    12
#define SCLK  13
#define LCLK  14
#define OE    15

#define BUTTON 16
#define POT    A2

#define YOUWIN  0x88
#define YOULOSE 0x77
#define CONNECT 0xcc

#define WON true
#define LOST false

#define GREEN  0b001
#define BLUE   0b010
#define RED    0b100
#define YELLOW 0b101
#define CYAN   0b011
#define PURPLE 0b110
#define WHITE  0b111
#define BLACK  0b000

#define XMASK 0x38
#define YMASK 0x07

#define ATK   true
#define DEF   false

#define ROWS 8
#define COLS 8

#include <Arduino.h>
#include <stdlib.h>
#include <stdbool.h>
#include "letters.h"

typedef struct row{ 
  byte red;
  byte blue;
  byte green;
} SRDATA;

typedef struct board{
  SRDATA row[ROWS];
} BOARD;

typedef byte COORD;

typedef struct ship{ 
  COORD POS; 
  byte length; 
} SHIP;

typedef enum gamemode{ SETUP, GAME, END } GAMEMODE;

typedef enum rotation{ UP = 0, DOWN = 1, LEFT = 2, RIGHT = 3 } ROTATION;

const byte RAINBOW[7] = { RED, YELLOW, GREEN, CYAN, BLUE, PURPLE, WHITE };

void initpins(void);
void tick(byte pin);
void writeRow(byte y, SRDATA* row);
void send(COORD data);
COORD receive(void);
void drawDot(byte x, byte y, byte color);
void addBoardDot(BOARD* board, COORD coord, byte color);
void removeBoardDot(BOARD* board, COORD coord);
void writeSR(bool val);
bool cointoss(); 
COORD querypoint(BOARD* board);
void writebyteRow(byte row, byte y, byte color);
void writebyteBoard(byte* board, byte color);
void writeChar(LETTER* letter, byte color, byte time);
void writeText(const char* string, byte* colorlist, byte numcolors, byte time);
bool emptyspace(BOARD* board, byte xmin, byte xmax, byte ymin, byte ymax, byte color);
bool SpotOccupied(BOARD* board, COORD coord, byte color);
bool cellon(BOARD* board, COORD point);

bool cointoss(){

  COORD mynum = (COORD)rand();
  COORD theirnum;

  send(mynum);
  theirnum = receive();

  return mynum > theirnum;

}

bool emptyspace(BOARD* board, byte xmin, byte xmax, byte ymin, byte ymax, byte color){

  COORD location;

  for( byte i = xmin; i < xmax; i++){
    for(byte j = ymin; j < ymax; j++){

      location = j & (i << 3);

      if(SpotOccupied(board, location, color) ) return false;

    }
  }

  return true;

}

void removeBoardDot(BOARD* board, COORD coord){

  byte y = coord &YMASK;
  byte x = (coord &XMASK) >> 3;

  board->row[y].red &= ~(0x80 >> x);
  board->row[y].blue &= ~(0x80 >> x);
  board->row[y].green &= ~(0x80 >> x);

  return;

}


void fillboard(BOARD* board, byte xmin, byte xmax, byte ymin, byte ymax, byte color ){

  bool red = color & RED;
  bool blue = color & BLUE;
  bool green = color & GREEN;

  xmin &= 0x7;
  xmax &= 0x7;

  ymin &= 0x7;
  ymax &= 0x7;

  for( byte i = xmin; i < xmax; i++){
    for(byte j = ymin; i < ymax; i++){

      if(red) board->row[j].red |= (0x80 >> i);
      if(blue) board->row[j].blue |= (0x80 >> i);
      if(green) board->row[j].green |= (0x80 >> i);

    }
  }

  return;

}

void initpins(){

  pinMode(SD, OUTPUT);
  pinMode(SCLK, OUTPUT);
  pinMode(LCLK, OUTPUT);
  pinMode(OE, OUTPUT);

  pinMode(BUTTON, INPUT);
  pinMode(POT, INPUT);

  return;

}

void tick(byte pin){ 

  digitalWrite(pin, HIGH);
  delay(1);
  digitalWrite(pin, LOW);
  delay(1);

  return;

}

void writeRow(byte row, SRDATA* data){

  for( int i = 0; i < ROWS; i++) writeSR( i == row);  // turn on the right row

  for(int i = 0; i < COLS; i++){   // write the columns

    writeSR(data->red & (1<<i));
    writeSR(data->blue & (1<<i));
    writeSR(data->green & (1<<i));

  }

  tick(LCLK);

  return;

}

void drawDot(byte x, byte y, byte color){
  
  x &= 7;
  y &= 7;

  bool red = color & RED;
  bool blue = color & BLUE;
  bool green = color & GREEN;

  for( byte i = 0; i < 8; i++) writeSR( i == y);  // activate the row that is the right row

  for( byte i = 7; i >= 0; i++){   // now do the columns 7 to 7 as it is the order
    
    if( i == x ){   // if you are on the right column write to the SR the values 
      writeSR(green);
      writeSR(blue);
      writeSR(red);
    }

    else for ( byte i = 0; i < 3; i++) writeSR(LOW);  // otherwise make the values zero

  }

  tick(LCLK);
  
  return;
}

void writeSR(bool val){

  digitalWrite(SD, val);
  tick(SCLK);

  return;
}

void DrawHorizLine(byte y, byte color, byte xmin, byte xmax){

  bool red = color & RED;
  bool blue = color & BLUE;
  bool green = color & GREEN;

  bool inrange;

  for ( byte i = 0; i < ROWS; i++) writeSR(i == y%8);  // turn on the row

  for ( byte i = COLS - 1; i >= 0; i--){   // fill in the row with the color values

    inrange = (i > xmin) && (i < xmax);

    writeSR(green && inrange);
    writeSR(blue && inrange);
    writeSR(red && inrange);

  }

  tick(LCLK);  // set it

  return;

}

void DrawVertLine(byte x, byte color, byte ymin, byte ymax){
  
  x &= 7;
  ymin &= 7;
  ymax &= 7;

  bool red = color & 4;
  bool blue = color & 2;
  bool green = color & 1;

  for ( byte i = 0; i < ROWS; i++) writeSR( (i > ymin) && (i < ymax) ); // turn select rows

  for( byte i = COLS - 1; i >= 0; i-- ){  // run through the columns

    if( i == x ){   // if we hit the right column

      writeSR(blue);    // write in the color values
      writeSR(green);
      writeSR(red);

    }

    else for( byte i = 0; i<3; i++) writeSR(LOW);

  }

  tick(LCLK);

  return;

}

void drawBoard(BOARD* board){
  for( byte i = 0; i < ROWS; i++) writeRow(7-i, board->row);
  return;
}

void addBoardDot(BOARD* board, COORD coord, byte color){

  bool red = color & RED;
  bool blue = color & BLUE;
  bool green = color & GREEN;

  byte y = 7 - (coord & YMASK);
  byte x = 7 - ((coord & XMASK) >> 3);

  if(blue) board->row[y].blue |= (1 << x);
  if(green) board->row[y].green |= (1 << x);
  if(red) board->row[y].red |= (1 << x);

  return;

}

void deleteBoardDot(BOARD* board, COORD point){

  byte x = 7 - ((point & XMASK) >> 3);
  byte y = 7 - (point & YMASK);

  board->row[y].blue &= ~(1 << x);
  board->row[y].green &= ~(1 << x);
  board->row[y].red &= ~(1 << x);

  return;

}

bool SpotOccupied( BOARD* board, COORD coord, byte color ){

  byte x = 7 - ((coord & XMASK) >> 3);
  byte y = 7 - (coord & YMASK);

  bool red = color & RED;
  bool blue = color & BLUE;
  bool green = color & GREEN;

  byte squarecolor;

  SRDATA currrow = board->row[y];

  red = red && (currrow.red & (1 << x));  // set the red bit
  blue = blue && (currrow.blue & (1 << x));  // set the blue bit
  green = green && (currrow.green & (1 << x));  // set the green bit

  squarecolor = green | (blue << 1) | (red << 2);

  return (color == squarecolor);

}

void send(COORD coord){
  Serial.print((char)coord);
}

void writeChar(LETTER* letter, byte color, byte time){

  int counter = 0;

  while(counter < 255*time){
    writebyteBoard((byte*)letter->row, color);
    counter++;
  }

  return;

}

void writeText(const char* string, const byte* colorlist, const byte numcolors, const byte time){

  for( byte i = 0; i < strlen(string); i++ ){
    
    byte color = colorlist[i & numcolors];
    char letter = tolower(string[i]);

    switch(letter){

      case 'a': 
      writeChar(&A, color, time);
      break;
      
      case 'b':
      writeChar(&B, color, time);
      break;

      case 'c':
      writeChar(&C, color, time);
      break;

      case 'd':
      writeChar(&D, color, time);
      break;

      case 'e':
      writeChar(&E, color, time);
      break;

      case 'f':
      writeChar(&F, color, time);
      break;

      case 'g':
      writeChar(&G, color, time);
      break;

      case 'h':
      writeChar(&H, color, time);
      break;

      case 'i':
      writeChar(&I, color, time);
      break;

      case 'j':
      writeChar(&J, color, time);
      break;

      case 'k':
      writeChar(&K, color, time);
      break;

      case 'l':
      writeChar(&L, color, time);
      break;

      case 'm':
      writeChar(&M, color, time);
      break;

      case 'n':
      writeChar(&N,  color, time);
      break;

      case 'o':
      writeChar(&O, color, time);
      break;

      case 'p':
      writeChar(&P, color, time);
      break;

      case 'q':
      writeChar(&Q, color, time);
      break;

      case 'r':
      writeChar(&R, color, time);
      break;

      case 's':
      writeChar(&S, color, time);
      break;

      case 't':
      writeChar(&T, color, time);
      break;

      case 'u':
      writeChar(&U, color, time);
      break;

      case 'v':
      writeChar(&V, color, time);
      break;

      case 'w':
      writeChar(&W, color, time);
      break;

      case 'x':
      writeChar(&X, color, time);
      break;

      case 'y':
      writeChar(&Y, color, time);
      break;

      case 'z':
      writeChar(&Z, color, time);
      break;

      case ':':
      writeChar(&COLON, color, time);
      break;

      case ' ':
      writeChar(&SPACE, color, time);
      break;

      default:
      writeChar(&DEFAULTLETTER, color, time);
      break;

    }

  }

  return;

}

COORD querypoint(BOARD* board){

  short reading;
  byte col, row;

  while(1){

    reading = analogRead(POT);

    col = reading/0x7f;

    drawBoard(board);
    DrawVertLine(col, WHITE, 0, 7);

    if(digitalRead(BUTTON)) break;

  }

  while(1){

    reading = analogRead(POT);

    row = reading/0x7f;

    drawBoard(board);
    DrawHorizLine(row, WHITE, 0, 7);
    DrawVertLine(col, WHITE, 0, 7);

    if(digitalRead(BUTTON)) break;

  }

  COORD spot = col | (row << 3);

  if(!cellon(board, spot)) return spot;  // if the point is valid then output it
  else return querypoint(board);   // if the point isnt good then call the function recursively until its good

}

bool boardslinked(){

  byte buffer;         // reading buffer
  Serial.begin(9600);  // standard speed setting
  Serial.print(CONNECT);  // print a dummy link code

  while(1) if(Serial.available() && Serial.readBytes(&buffer, 1)) break; // read a byte

  if(buffer == CONNECT) return true;  // if the code matches then youre cool
  else return boardslinked();      // if not try again

}

bool cellon(BOARD* board, COORD coord){

  byte x = 7 - ((coord & XMASK) >> 3);
  byte y = 7 - (coord & YMASK);

  bool red = board->row[y].red & (1 << x);
  bool blue = board->row[y].blue & (1 << x);
  bool green = board->row[y].green & (1 << x);

  return red | blue | green;
}

COORD receive(){
  COORD val;
  while(1) if( Serial.available() && Serial.readBytes(&val, 1)) break;
  return val;
}

void printbyteRow(byte row, byte y, byte color){

  bool red = color & RED;
  bool blue = color & BLUE;
  bool green = color & GREEN;

  bool on;  // whether a cell is on

  for( byte i = 0; i < 8 ; i++) writeSR(i == y);  // output the ground 
  for( byte i = 0; i < 8; i++ ){  // go through the columns

    on = row & (1 << i);  // if the cell is on

    writeSR(on && blue);  // output the cooresponding bits
    writeSR(on && green);
    writeSR(on && red);

  }

  tick(LCLK);

  return;

}

void printbyteBoard(byte* board, byte color){
  for( byte i = 7; i >= 0; i--) printbyteRow(board[7-i], i, color);
  return;
}