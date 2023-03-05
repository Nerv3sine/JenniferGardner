PImage coin;
PFont f;
void setup() {
  size(1280,720);
  coin = loadImage("COIN.png");
  f = createFont("Arial",16,true); 
}

void draw() {
  int money = 100;
  fill(204,255,204);
  rect(850, 10, 420, 100, 28);
  stroke(204,255,204);
  textFont(f,35);                
  fill(0);                         
  text("Total: $",870,70); 
  image(coin,1180,10,100,100);
  if(money>0){
    text(money,980,70); 
  }
}
