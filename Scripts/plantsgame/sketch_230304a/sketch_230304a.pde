void setup() {
 
  size(1280,720);
}
int money=100;
void mouseClicked() {
    if (mouseX >=0 && mouseX<=25 && mouseY>=0 && mouseY<=25 && money<20)//change the values to where the seed is
    {
       money-=20;
    }
  }
