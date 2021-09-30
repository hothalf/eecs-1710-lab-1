PImage hell, demon, human;
float x1, y1, x2, y2;
float speedX1, speedX2;

void setup() {
  size(800, 600, P2D);
  hell = loadImage("hell.jpg");
  hell.resize(hell.width * (height / hell.height), height);
  imageMode(CENTER);
  frameRate(60);
  x1 = width/2;
  y1 = height/2;
  x2 = x1 + 50;
  y2 = y1 - 50;
  speedX1 = 5;
  speedX2 = speedX1 * 0.5;
  
}

void draw() {
  background(0, 127, 255);
    
  tint(255, 127);
  image(hell, x2, y2);
  
  noTint();
  image(hell, x1, y1); // the image drawn last will be in front
  demon = loadImage("demon.png");
  demon.resize(demon.width * (height / demon.height), height);
  human = loadImage("human.png");
  human.resize(human.width * (height / human.height), height);
  x1 += speedX1;
  x2 += speedX2;
    
  if (x1 > width || x1 < 0) {
    speedX1 *= -1;  
    speedX2 *= -1;
  }
}
