class demon {

  PVector position, target;
  PImage demon;

  
  float triggerDistance1 = 50;

    
  // This is the constructor; it needs to have the same name as the class.
  demon(float x, float y) {

    demon = loadImage("demon.png");
    demon.resize(100,100);
    
  }
  
  void update() {
    PVector mousePos = new PVector(mouseX, mouseY);

  }
  
  void draw() {    
    ellipseMode(CENTER);
    rectMode(CENTER);
    imageMode(CENTER);
  
    image(demon, mouseX,mouseY);
    ellipse(mouseX, mouseY, triggerDistance1*2, triggerDistance1*2);
    
  }
  
  void run() {
    update();
    draw();
  }
  

  
}
