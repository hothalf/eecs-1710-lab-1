class human {

  PImage human;
  PVector position;
  float triggerdistance = 50;
  float xspeed = random (-10, 10); //sets the speed of the circle moving on the x-axis
  float yspeed = random (-10, 10); //sets the speed of the circle moving on the y-axis
  
  float circleX ;  //initial value for circle on x-axis
  float circleY ;  //initial value for circle on y-axis
  human(float x, float y) {
    position = new PVector(x, y);

    human = loadImage("human.jpg");
    human.resize(75, 75);
  }

  void reproduce() {
    if (dist(this.position.x, mouseY, position.x, position.y) < triggerdistance*2) {
    //humans.add(new human(position.x,position.y));
    }
  }

  void update() { // updates check distances of it from other humans and demon
    
    intersectDemon(demons.get(0)); //get demon, there is only one
  }


  void draw() {
    ellipseMode(CENTER);
    rectMode(CENTER);
    imageMode(CENTER);

    

    noFill();
    stroke(0, 255, 0);
    ellipse(position.x, position.y, triggerdistance*2, triggerdistance*2);
    
    reproduce();//check reproduce
    image(human, position.x, position.y);
    //code taken from https://openprocessing.org/sketch/230881/
    position.x = position.x + xspeed;    //code to change the speed of circle on x-axis
    position.y = position.y + yspeed;    //code to change speed of circle on y-axis

    if (position.x > width) {    //prevents the ball from moving offscreen on right of x-axis
      xspeed = -10  ;      //if ball is greater than width, it'll bounce off end screen and move in opposite direction
    }
    if (position.x < 0) {  //prevents ball from moving offscreen on left of axis
      xspeed = 10;
    }    //if ball is less than 0, it'll bounce off end screen and move in opposite direction
    if (position.y > height) { //prevents ball from moving offscreen at the top
      yspeed = -10;
    }    //if ball is greater than height, it'll bounce off top of screen and move down
    if (position.y < 0) {  //if ball is less than 0 in height, it'll bounce off bottom and move up
      yspeed = 10;
    }    //prevents ball from disappearing at the bottom of the screen
  }


void run() {
  update();
  draw();
}
    void intersectDemon(demon demon){
     
      if (dist(demon.getposition().x, demon.getposition().y, position.x, position.y) < triggerdistance*2) {
        humans.remove(human);
      } else {
        fill(0, 255, 0);
      }
    
    }


}
