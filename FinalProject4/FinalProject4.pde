PFont f;
int rectWidth;
int marktime = 0;
int timeout = 2000;
int keyIndex = -1;



//Moving mouse changes freq and amp
//pressing letters allows you to create sound
void setup() {
  size(640, 360, P2D);
  background(0);

  setupXYscope();
  
  rectWidth = width/4;
} 

void draw() {
 // background(0);
    updateXYscope();
 
    if (millis() > marktime + timeout) {
    xy.clearWaves();
  }

  surface.setTitle("" + frameRate);



}

// reference https://processing.org/examples/keyboard.html
void keyPressed(){

   keyIndex = -1;
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A';

  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a';
 
  }
  if (keyIndex == -1) {
    // If it's not a letter key, clear the screen
    background(0);
    xy.clearWaves();
  } else { 
    // It's a letter key, fill a rectangle
    fill(millis() % 255);
    float x = map(keyIndex, 0, 25, 0, width - rectWidth);
    xy.rect(mouseX,mouseY, rectWidth, height);
    rect(mouseX, mouseY, rectWidth, height);
    
  }
   xy.amp(norm(mouseY, height, 0));
  xy.freq(map(mouseX, 0, width, 0, 440));
    marktime = millis();
}
