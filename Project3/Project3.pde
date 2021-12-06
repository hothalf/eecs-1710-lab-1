PImage red, img;


void setup(){
  size(250,250,P2D);
  img = loadImage("amongus.png");
  
  img.loadPixels();
  
}  

void draw(){
 img(img, 0 ,0);
 
 
}
