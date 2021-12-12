PShader shader;
PImage bo;
void setup() {
  size(800, 600, P2D);
  shader = loadShader("example.glsl");
  shader.set("resolution", float(width), float(height));
  shader.set("rate", 1.0);
  shader.set("depth", 1.0);
  
  
  bo = loadImage("boruto.png");
  bo.resize(800,600);
}

void draw() {
  background(0);
  
  
  image(bo,0,0);
  stroke(0, 255, 0);
  fill(0, 127, 255);
  ellipse(width/2, height/2, 432, 232);
  ellipse(100, height/2, 210, 200);

  shader.set("time", float(millis())/1000.0);
  shader.set("tex0", get());
  
 shader(shader);
 image(bo,0,0);
}
