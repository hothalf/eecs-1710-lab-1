
import processing.video.*/

Movie movie ;
Capture capture



void setup(){
  
 size(640,480, P3D);
 cameraPos = new PVector(width, 0, 100);
 capture = new Capture(this, width, height);
 capture.list();
 capture.start();
}


  void draw(){
  
}
