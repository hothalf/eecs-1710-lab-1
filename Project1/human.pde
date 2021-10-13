class human {
  
  
  PVector position;
  float sizeVal;
  PImage human;
  boolean alive = true;
  boolean touch = false;
  int xmove;
  int ymove;
  
  human(float x, float y) {
    
    human = loadImage("human.png");
    human.resize(75,75);
    
    
  }
  
  
  void update() { // updates
  //  if(touch){
   // humans.add(new human(this.x, this.y));
    // TODO
//  }
  }
  
/*  void collision(){
   if(dist(x,y,mouseX,mouseY) <= 20){
     humans.remove(i);
  }
  }
*/  
  void draw() {
    if (alive) {
      human = loadImage("human.png");
      human.resize(75,7);
    }
  }
  
  void run() {
    update();
    draw();
  }
  

  }
