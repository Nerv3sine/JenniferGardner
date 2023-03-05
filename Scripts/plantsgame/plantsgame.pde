int flowerpotButton = 1;
int flowerpotSelection = 1; //defaults to pot 1
int toolSelection = 1; // defaults to tool 1

void setup() {
  size(1280, 720);
}

void draw() {
  //create flowerpot on/off button
  if(flowerpotButton == 1) { // if button is on, colour green
    fill(20, 168, 29);  
  }
  else {
    fill(240, 13, 44);  // if button is off colour red
  }
  ellipse(40, 40, 60, 60); //button placeholder
  
  // placeholders for tool buttons
  fill(57, 145, 189);
  rect(400, 40, 60, 60);
  rect(500, 40, 60, 60);
  rect(600, 40, 60, 60);
  
  //insert images of each of the flowerpot options to be used as buttons, use boundaries for flowerpot selection buttons
  
  //tool selection
  fill(0, 0, 0);
  if (toolSelection == 1) {
    text("Tool 1 Selected", 300, 40);
  }
  if (toolSelection == 2) {
    text("Tool 2 Selected", 300, 40);
  }
  if (toolSelection == 3) {
    text("Tool 3 Selected", 300, 40);
  }
  //flowerpot options
  if (flowerpotSelection == 1) {
    text("Flowerpot 1 Selected", 100, 40);
  }
  if (flowerpotSelection == 2) {
    text("Flowerpot 2 Selected", 100, 40);
  }
  if (flowerpotSelection == 3) {
    text("Flowerpot 3 Selected", 100, 40);
  }
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
  // these are made up boundaries for the tool selection (need to be filled with placeholders
  if (mouseX >= 400 && mouseX <= 460 && mouseY >= 40 && mouseY <= 100) { //boundaries for tool 1 button
    toolSelection = 1;
  }
  if (mouseX >= 500 && mouseX <= 560 && mouseY >= 40 && mouseY <= 100) { //boundaries for tool 2 button
    toolSelection = 2;
  }
  if (mouseX >= 600 && mouseX <= 660 && mouseY >= 40 && mouseY <= 100) { //boundaries for tool 3 button
    toolSelection = 3;
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
  
  //tool selection -- when a tool is selected, make it attach to cursor until dropped
  if (toolSelection == 1){
    //choose tool 1
  }
  if (toolSelection == 2) {
    // choose tool 2
  }
  if (toolSelection == 3) {
    // choose tool 3
  }
   if (flowerpotButton == 1) { // if flowerpot button is on, enable pot placement capabilities
    if (mouseY <= shelfHeightHigh) { //place pot on upper shelf
      //placeholder for pot 1
      fill(226, 156, 16);
      rect(mouseX - 50, shelfHeightHigh, 60, 60);
     }
     else if (mouseY > shelfHeightHigh && mouseY <= shelfHeightMiddle) { //place pot on middle shelf
      //placeholder for pot 2
      fill(226, 156, 16);
      rect(mouseX - 50, shelfHeightMiddle, 60, 60);
     }
     else if (mouseY > shelfHeightMiddle) { //place pot on bottom shelf
      //placeholder for pot 3
      fill(226, 156, 16);
      rect(mouseX - 50, shelfHeightLow, 60, 60);
     }
   }
 }
