class Pot {
  PImage potSprite;
  boolean purchased;
  int potSize;
  int potX;
  int potY;
  int income;
  Plant plantInPot;
  
  Pot(PImage potSprite, int x, int y, int size) {
    this.potSprite = potSprite;
    potSize = size;
    potX = x;
    potY = y;
    income = 2;
  }
  
  void run(int globalX) {
    globalX = -globalX;
    fill(100, 100, 100);
    if(!purchased){
      ellipse(potX + 110 + globalX, potY + 172, 50, 10); 
    }else{
      image(potSprite, potX + globalX, potY, potSize, potSize); 
    }
  }
  
  int getIncome(){
    if(purchased){
      return income;
    }else{
      return 0;
    }
  }
  
  void setPot(PImage sprite){
    potSprite = sprite;
  }
  
  boolean isClicked(int x, int y, int globalX){
    return(x + globalX > potX && x + globalX < potX + potSize && y > potY && y <= potY + potSize);
  }
  
  void purchase(PImage sprite){
    setPot(sprite);
    purchased = true;
  }
  
  boolean isPurchased(){
    return purchased;
  }
}
