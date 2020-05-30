
#include <boardutils.h>

#define TEXTTIMEINTERVAL  25
#define SHIPCOLOR BLUE

SHIP Carrier = {0, 5};
SHIP Battleship = {0, 4};
SHIP Submarine = {0, 3};
SHIP Destroyer = {0, 3};
SHIP PatrolBoat = {0, 2};

bool shipsleft(BOARD* board);
void placeship(BOARD* board, SHIP* ship);
bool hit(COORD point);
void game(GAMEMODE* mode, bool* status, BOARD* atk, BOARD* def, bool* winstatus);

void setup() {

  BOARD atk, def;

  bool goesfirst;
  bool PHASE = DEF;
  bool won = false;

  GAMEMODE state;

  initpins();

  while(1) if(boardslinked()) break;

  writeText("Place Your Ships", RAINBOW, 7, TEXTTIMEINTERVAL);
  writeText("Carrier: 5", RAINBOW, 7, TEXTTIMEINTERVAL);
  placeship(&def, &Carrier);
  writeText("Battleship: 4", RAINBOW, 7, TEXTTIMEINTERVAL);
  placeship(&def, &Battleship);
  writeText("Submarine: 3", RAINBOW, 7, TEXTTIMEINTERVAL);
  placeship(&def, &Submarine);
  writeText("Destroyer: 3", RAINBOW, 7, TEXTTIMEINTERVAL);
  placeship(&def, &Destroyer);
  writeText("Patrol Boat: 2", RAINBOW, 7, TEXTTIMEINTERVAL);
  placeship(&def, &PatrolBoat);

  state = GAME;

  goesfirst = cointoss();

  if(goesfirst) PHASE = ATK;

  while( state == GAME ){

    game(&state, &PHASE, &atk, &def, &won);
    PHASE = !PHASE;

  }

  if(won) writeText("YOU WON, CONGRATULATIONS", RAINBOW, 7, TEXTTIMEINTERVAL);
  else writeText("YOU LOST, TRY HARDER NEXT TIME", RAINBOW, 7, TEXTTIMEINTERVAL);


}

void loop() {}


void game(GAMEMODE* state, bool* phase, BOARD* atk, BOARD* def, bool* winstatus){

  if(ATK){

    COORD atkpoint = querypoint(atk);

    (hit(atkpoint))? addBoardDot(atk, atkpoint, RED): addBoardDot(atk, atkpoint, WHITE);

    COORD status = receive();

    if(status == YOUWIN) {
      *state = END;
      *winstatus = WON;
    }

    return;

  }

  else {

    COORD atk = receive();

    if(SpotOccupied(def, atk, SHIPCOLOR)){
      addBoardDot(def, atk, RED);
      send(0xff);
    }
    else send(0);

    if(!shipsleft(def)) send(YOUWIN);
    else send(YOULOSE);

  }
}

bool shipsleft(BOARD* board){
  for( byte i = 0; i < 8; i++){
    for(byte j = 0; j < 8; j++){
      if(board->row[i].blue & 1<<j) return true;
    }
  }
  return false;
}

void placeship(BOARD* board, SHIP* ship){

  ROTATION rotation;
  byte length = ship->length;

  COORD HEAD = querypoint(board);
  ship->POS = HEAD;

  byte x = (HEAD & 0x38)>>3;
  byte y = HEAD & 0x7;

  bool rightpossible = (((x + length ) < 8) && emptyspace(board, x, x + length - 1, y, y, SHIPCOLOR));
  bool leftpossible = (((x - length ) >= 0) && emptyspace(board, x - length + 1, x, y, y, SHIPCOLOR));

  bool uppossible = (((y + length) < 8 ) && emptyspace(board, x, x, y, y + length - 1, SHIPCOLOR));
  bool downpossible = (((y - length) > 0) && emptyspace(board, x, x, y - length + 1, y, SHIPCOLOR));

  if(!(uppossible || downpossible || rightpossible || leftpossible)){  //if not possible, call recursively
    placeship(board, ship);
    return;
  }

  while(1){

    rotation = (ROTATION)(analogRead(POT)/0xff);  // make the pot yield 0 - 3

    switch(rotation){

      case UP: 
      if(uppossible) 
        DrawVertLine(x, SHIPCOLOR, y, y + length);
      break;

      case DOWN:
      if(downpossible) 
        DrawVertLine(x, SHIPCOLOR, y-length, y);
      break;

      case RIGHT:
      if(rightpossible) 
        DrawHorizLine(y, SHIPCOLOR, x, x + length);
      break;

      case LEFT:
      if(leftpossible)
        DrawHorizLine(y, SHIPCOLOR, x - length, x);
      break;

    }

    if(digitalRead(BUTTON)) break;
 }

 switch (rotation){

   case UP:
   fillboard(board, x, x, y, y + length, SHIPCOLOR);
   break;

   case DOWN:
   fillboard(board, x, x, y - length, y, SHIPCOLOR);
   break;

   case RIGHT:
   fillboard(board, x, x + length, y, y, SHIPCOLOR);
   break;

   case LEFT:
   fillboard(board, x - length, x, y, y, SHIPCOLOR);
   break;

 }

 ship->POS |= rotation << 6;   // configure the orientation

 return;

}


bool hit(COORD point){
  bool data;
  send(point);
  data = receive();
  return data;
}

bool shipsank(BOARD* board, SHIP* ship){

  ROTATION rotation = (ROTATION)((ship->POS & 0xb0) >> 6);

  byte x = (ship->POS & XMASK) >> 3;
  byte y = ship->POS & YMASK;

  switch (rotation){
    
    case UP:
    return emptyspace(board, x, x, y, y + ship->length - 1, SHIPCOLOR );
    break;

    case DOWN:
    return emptyspace(board, x, x, y - ship->length + 1, y, SHIPCOLOR );
    break;

    case RIGHT:
    return emptyspace(board, x, x + ship->length - 1, y, y, SHIPCOLOR );
    break;

    case LEFT:
    return emptyspace(board, x - ship->length + 1, x, y, y, SHIPCOLOR );
    break;

    default:
    return false;
    break;

  }
}
