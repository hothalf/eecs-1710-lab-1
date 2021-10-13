class human {
  
  PImage human;
  PVector position;
  float triggerdistance = 25;
  
  
  human(float x, float y) {
    position = new PVector(x, y);
    
    human = loadImage("human.jpg");
    human.resize(75,75);
    
    
  }
  
  void reproduce(){
    //humans.add();  
  }
  
  void update() { // updates check distances of it from other humans and demon
    
    
   
  }
  
  
  void draw() {
    ellipseMode(CENTER);
    rectMode(CENTER);
    imageMode(CENTER);
    
    image(human, position.x, position.y);
    
    
  }
  
  void run() {
    update();
    draw();
  }
  

  }
