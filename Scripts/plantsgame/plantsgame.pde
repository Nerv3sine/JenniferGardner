PImage coin;
PFont gameFont;
int x = 0;
PImage flowerpot1, flowerpot2, flowerpot3;
int potx = 0;
int poty = 110;
ArrayList<ArrayList<Pot>> listOfPots;
int money = 100;

void setup() {
  size(1280, 720);
  flowerpot1 = loadSprite("flower pot.png");
  flowerpot2 = loadSprite("flower pot 2.png");
  flowerpot3 = loadSprite("flower pot 3.png"); //empty flowerpot
  
  coin = loadSprite("COIN.png");
  gameFont = createFont("../font/Barlow-Regular.ttf",16,true);
  textFont(gameFont,35);
  
  //scene setup
  listOfPots = new ArrayList<ArrayList<Pot>>();
  listOfPots.add(new ArrayList<Pot>());
  int rowNum = 0;
  while(rowNum < 3) {
    /*int randnum = int(random(3));
    
    if(randnum == 0) {
      image(flowerpot1, potx, poty, width/6, width/6);
    }
    else if(randnum == 1) {
      image(flowerpot2, potx, poty, width/6, width/6);
    }
    else {
      image(flowerpot3, potx, poty, width/6, width/6);
    }*/
    listOfPots.get(rowNum).add(new Pot(flowerpot3, potx, poty + rowNum * 205, width/6));
    potx += 150;
    if(potx > 1150){
      rowNum++;
      listOfPots.add(new ArrayList<Pot>());
      //poty += 205;
      potx = 0;
    }
  }
}

void draw() {
  fill(204,255,204);
  rect(850, 10, 420, 100, 28);
  stroke(204,255,204);
  fill(0);                         
  text("Total: $",870,70); 
  image(coin,1180,10,100,100);
  text(money,980,70);
  
  fill(0,0,0);
  rect(0, 275, 1280, 15);
  rect(0, 480, 1280, 15);
  rect(0, 690, 1280, 15);
  
  for(ArrayList<Pot> row : listOfPots){
    for(Pot pot : row){
      pot.run();
    }
  }
}

PImage loadSprite(String fileName){
  String spriteDirectory = "../../Sprites/";
  return loadImage(spriteDirectory + fileName);
}
