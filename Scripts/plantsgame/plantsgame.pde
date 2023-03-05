int x =0;
int flowerpotButton = 1;
int flowerpotSelection = 1; //defaults to pot 1
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
  ellipse(30, 60, 60, 60); //button placeholder
  
  //flowerpot options
  //insert images of each of the flowerpot options to be used as buttons
}

void mousePressed() {
  if (mouseX >= 30 && mouseX <= 90 && mouseY >= 30 && mouseY <= 90) {
   //state of flowerpot button, turned on/off by pressing button
    flowerpotButton *= -1;
  }
  //select the flowerpot you want to place
  if (mouseX >= 120 && mouseX <= 180 && mouseY >= 120 && mouseY <= 160) { //boundaries for pot 1 button (approx, not sure about actual sizes of pots)
    flowerpotSelection = 1;
  }
  if (mouseX >= 240 && mouseX <= 300 && mouseY >= 240 && mouseY <= 300) { //boundaries for pot 2 button
    flowerpotSelection = 2;
  }
  if (mouseX >= 360 && mouseX <= 420 && mouseY >= 360 && mouseY <= 420) { //boundaries for pot 3 button
    flowerpotSelection = 3;
  }
}

void mouseClicked() { 
  int shelfHeightHigh = 110; //used so program knows which shelf to place pot on
  int shelfHeightMiddle = 315; //placeholder for location of middle shelf
  int shelfHeightLow = 520; //placeholder for location of bottom shelf
  
  if (flowerpotSelection == 1){
    //choose pot 1
  }
  if (flowerpotSelection == 2) {
    // choose pot 2
  }
  if (flowerpotSelection == 3) {
    // choose pot 3
  }
  
   if (flowerpotButton == 1) { // if flowerpot button is on, enable pot placement capabilities
    if (mouseY <= shelfHeightHigh) { //place pot on upper shelf
      //placeholder for pot
      fill(226, 156, 16);
      rect(mouseX - 50, shelfHeightHigh, 60, 60);
     }
     else if (mouseY > shelfHeightHigh && mouseY <= shelfHeightMiddle) { //place pot on middle shelf
      //placeholder for pot
      fill(226, 156, 16);
      rect(mouseX - 50, shelfHeightMiddle, 60, 60);
     }
     else if (mouseY > shelfHeightMiddle) { //place pot on bottom shelf
      //placeholder for pot
      fill(226, 156, 16);
      rect(mouseX - 50, shelfHeightLow, 60, 60);
     }
   }
 }
