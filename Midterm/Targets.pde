class Targets {
  PVector position;
  
  
  Targets(float x, float y){
    position = new PVector(x,y);
  }
  
  void update(){
    
  }
  
  
  void newtarget(){
   Targets target = new Targets(random(width),random(height));
   
  }
  
  void mousePressed(){
   targets.remove(target); 
  }
}
