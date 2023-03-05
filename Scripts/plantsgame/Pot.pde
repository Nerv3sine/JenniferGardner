class Pot {
  PImage potType;
  int potSize;
  float potX;
  float potY;
  Plant plantInPot;
  
    Pot(int choosePotType, float x, float y) {
      
      if(choosePotType == 1){
        potType = flowerpot1;
      }
      else if(choosePotType == 2) {
        potType = flowerpot2;
      }
      else {
        potType = flowerpot3;
      }
      
      potSize = width/6;
      potX = x;
      potY = y;
    }
}
