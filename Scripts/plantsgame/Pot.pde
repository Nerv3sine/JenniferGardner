class Pot {
  PImage potSprite;
  int potSize;
  float potX;
  float potY;
  Plant plantInPot;
  
  Pot(PImage potSprite, float x, float y) {
    
    this.potSprite = potSprite;
    potSize = width/6;
    potX = x;
    potY = y;
  }
}
