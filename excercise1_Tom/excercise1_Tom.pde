int x= 52;
color bgcolor = color(255, 0 , 0);
float circleSize = 100;
void setup() {
  size(550,550);
}

void draw() {
    fill(255,255,255);
  stroke(0,0,255);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,circleSize,circleSize);
  
  
  if (mousePressed) {
    rectMode(CENTER);
    fill(0,255);
    stroke(255,0,0);
    line(mouseX,mouseY,pmouseX,pmouseY);
    rect(mouseX,mouseY,circleSize,circleSize);
  }
}

int something(int x){

  x+=circleSize;
  return x;
}
