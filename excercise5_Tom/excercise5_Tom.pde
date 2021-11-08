float maxThreshold = 0.1;
float minThreshold = 0.01;
float scaleAmp = 1000;
float scaleFreq = 1000;


void setup() {
  size(800, 600, P2D);  
  setupMinim();
}

void draw() {
  updateMinim();
  
  println(amp, freq);
  rectMode(CENTER);
  noStroke();
  
  float fillValR = constrain(map(freq, 0, scaleFreq, 0, 255), 0, scaleFreq);
  float fillValG = constrain(map(freq, 0, scaleFreq, 0, 127), 0, scaleFreq);
  float fillValB = constrain(map(freq, 0, scaleFreq, 0, 63), 0, scaleFreq);
  while(freq > 200){
  // using two thresholds instead of one makes for smoother transitions
  if (amp > maxThreshold) {
    fill(0,amp*1000,0);

  } else if (amp < minThreshold) {
    fill(fillValR, fillValG, fillValB);
  }
  
  rect(mouseX,mouseY, 250, amp * scaleAmp);
   updateMinim();


}
}
void exit() {
  stopMinim();
}
