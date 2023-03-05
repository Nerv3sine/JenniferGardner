int x =0;
int flowerpotButton = 1;
int timer = 0;

void setup() {
  size(1280, 720);
}

void draw() {
  //create flowerpot button
  if(flowerpotButton == 1) { // if button is on, colour green
    fill(20, 168, 29);  
  }
  else {
    fill(240, 13, 44);  // if button is off colour red
  }
  ellipse(60, 60, 60, 60); //button placeholder
  
  //flowerpot options
  fill(226, 156, 16);
  rect(120, 60, 60, 60);
  fill(43, 0, 255);
  rect(240, 60, 60, 60);
  fill(100, 235, 217);
  rect(360, 60, 60, 60);
}

void mousePressed() {
  if (mouseX >= 30 && mouseX <= 90 && mouseY >= 30 && mouseY <= 90) {
   //state of flowerpot button, turned on/off by pressing button
    flowerpotButton *= -1;
  }
}

void mouseClicked() { 
  int potWidth = 100; //used to center where pot is placed
  int potHeight = 100; //used to center pot
  int shelfHeightHigh = 240; //used so program knows which shelf to place pot on
  int shelfHeightMiddle = 480; //placeholder for location of middle shelf
  int shelfHeightLow = 720; //placeholder for location of bottom shelf
  
   if (flowerpotButton == 1) {
    //flowerpot placement capabilities
    if (mouseY <= shelfHeightHigh && mouseY > 120) { //place pot on upper shelf
      //placeholder for pot
      fill(226, 156, 16);
      rect(mouseX - potWidth/2, shelfHeightHigh - potHeight, 100, 100);
     }
     else if (mouseY > shelfHeightHigh && mouseY <= shelfHeightMiddle) { //place pot on middle shelf
      //placeholder for pot
      fill(226, 156, 16);
      rect(mouseX - potWidth/2, shelfHeightMiddle - potHeight, 100, 100);
     }
     else if (mouseY > shelfHeightMiddle) { //place pot on bottom shelf
      //placeholder for pot
      fill(226, 156, 16);
      rect(mouseX - potWidth/2, shelfHeightLow - potHeight, 100, 100);
     }
   }
 }
