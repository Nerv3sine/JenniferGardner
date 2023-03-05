int x =0;
PImage flowerpot1, flowerpot2, flowerpot3;
int potx = 0;
int poty = 110;
Pot[] listOfPots = new Pot[24];

void setup() {
  size(1280, 720);
  flowerpot1 = loadSprite("flower pot.png");
  flowerpot2 = loadSprite("flower pot 2.png");
  flowerpot3 = loadSprite("flower pot 3.png");
}

void draw() {
  while(poty <= 520) {
    int  randnum = int(random(3));
    if(randnum == 0) {
      image(flowerpot1, potx, poty, width/6, width/6);
    }
    else if(randnum == 1) {
      image(flowerpot2, potx, poty, width/6, width/6);
    }
    else {
      image(flowerpot3, potx, poty, width/6, width/6);
    }
    potx += 150;
    if(potx > 1150){
      poty += 205;
      potx = 0;
    }
  }
  
  fill(0,0,0);
  rect(0, 275, 1280, 15);
  
  fill(0,0,0);
  rect(0, 480, 1280, 15);
  
  fill(0,0,0);
  rect(0, 690, 1280, 15);
}

PImage loadSprite(String fileName){
  String spriteDirectory = "../../Sprites/";
  return loadImage(spriteDirectory + fileName);
}
