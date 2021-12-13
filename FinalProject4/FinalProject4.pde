PFont f;
int rectWidth;
int marktime = 0;
int timeout = 2000;


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
  
    int keyIndex = -1;
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A';
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a';
  }
  if (keyIndex == -1) {
    // If it's not a letter key, clear the screen
    background(0);
  } else { 
    // It's a letter key, fill a rectangle
    fill(millis() % 255);
    float x = map(keyIndex, 0, 25, 0, width - rectWidth);
    xy.rect(x,0, rectWidth, height);
    rect(x, 0, rectWidth, height);
    
  }
    marktime = millis();
}
