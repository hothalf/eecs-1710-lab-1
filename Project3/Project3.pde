import gifAnimation.*;

PImage boruto, img;
ArrayList<Integer> rlist = new ArrayList<Integer>();
ArrayList<Integer> glist = new ArrayList<Integer>();
ArrayList<Integer> blist = new ArrayList<Integer>();
int amongus_size = 12;
int counter;

Gif amongus ;

void setup(){
  size(1000,1000,P2D);
  amongus = new Gif(this, "white.gif");
  amongus.play();
  
  
  boruto = loadImage("boruto.png");
  boruto.resize(width,height);
  boruto.loadPixels();
  
  for(int i=0; i<=width; i+=amongus_size ){
   for(int j=0; j<=height; j+=amongus_size){
    img = boruto.get(i,j,amongus_size,amongus_size);
    img.loadPixels();
    int r =0, g=0, b = 0;
    
    for(int k = 0; k<amongus_size*amongus_size; k++){
      color c = img.pixels[k];
      r += red(c);
      g += green(c);
      b += blue(c);   
      
 }


    rlist.add(r/(amongus_size*amongus_size));
    glist.add(g/(amongus_size*amongus_size));
    blist.add(b/(amongus_size*amongus_size));
   }
  }
  
 
}  

void draw(){
 
 counter =0;
 for(int i=0; i<=width; i +=amongus_size ){
   for(int j=0; j<=height; j+=amongus_size){
     //color c = get(i,j);

     
     tint((float)rlist.get(counter), (float)glist.get(counter),(float)blist.get(counter));
     
     counter++;
     image(amongus,i,j,amongus_size,amongus_size);
   }
 }
 
 
}
