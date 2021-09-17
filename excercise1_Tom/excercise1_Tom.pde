@@ -0,0 +1,28 @@
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
  x ++;
  ellipse(mouseX,mouseY,something(x),something(x));
  
  
  if (mousePressed) {
    rectMode(CENTER);
    fill(0,255);
    stroke(255,0,0);
    line(mouseX,mouseY,pmouseX,pmouseY);
    rect(mouseX,mouseY,circleSize,circleSize);
  }
}

int something(int x){

  return x;
}
