class Pot {
  PImage potSprite;
  boolean purchased;
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
  
  void setPot(PImage sprite){
    potSprite = sprite;
  }
  
  boolean isClicked(int x, int y){
    return(x > potX && x < potX + potSize && y > potY && y <= potY + potSize);
  }
  
  void purchase(PImage sprite){
    setPot(sprite);
    purchased = true;
  }
  
  boolean isPurchased(){
    return purchased;
  }
}
