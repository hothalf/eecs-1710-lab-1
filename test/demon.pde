class demon {

  PVector position, target;
  PImage demon;

  
  float triggerDistance1 = 50;

    
  // This is the constructor; it needs to have the same name as the class.
  demon(float x, float y) {

    position = new PVector (x,y);
    demon = loadImage("demon.png");
    demon.resize(100,100);
    
  }
  
  void update() {
    

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
  
  PVector getposition(){
    return position;
  }

  
}
