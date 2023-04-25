class Pot {
  PImage potSprite;
  int potSize;
  int potX;
  int potY;
  Plant plantInPot;
  
  Pot(PImage potSprite, int x, int y, int size) {
    this.potSprite = potSprite;
    potSize = size;
    potX = x;
    potY = y;
  }
  
  void run() {
     image(potSprite, potX, potY, potSize, potSize);
  }
}
