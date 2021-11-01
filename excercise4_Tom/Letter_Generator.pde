class LetterGenerator {
  
  PShape v ,p,n,m,d;
  ArrayList<Letter> letters;
  PVector position;
  float offset = 200;
  
  LetterGenerator(String input, float x, float y) {
    initShapes();
    position = new PVector(x, y);
    letters = new ArrayList<Letter>();
    
    for (int i=0; i<input.length(); i++) {     
      char ch = input.charAt(i);
      
      float px = position.x + ((i+1) * offset);
      float py = position.y;
      
      switch(ch) {
          case 'v':
          letters.add(new Letter(v, px, py));
          break;
        case 'm':
          letters.add(new Letter(m, px, py));
          break;
        case 'n':
          letters.add(new Letter(n, px, py));
          break;
          case 'p':
          letters.add(new Letter(p, px, py));
          break;
        case 'd':
          letters.add(new Letter(d, px, py));
          break;
          
      }
    }
    
  }

  void initShapes() {   
    m = createShape();
    m.beginShape();
    m.vertex(200, 100);
    m.bezierVertex(100, 100, 100, 200, 100, 500);
    m.vertex(200, 100);
    m.bezierVertex(320, 0, 320, 300, 500, 500);
    m.bezierVertex(200, 320, 240, 100, 200, 500);
    m.endShape(CLOSE);   
    
    n = createShape();
    n.beginShape();
    n.vertex(200, 100);
    n.bezierVertex(100, 100, 100, 200, 100, 500);
    n.vertex(200, 100);
    n.bezierVertex(320, 0, 320, 300, 500, 500);
    n.bezierVertex(200, 320, 240, 100, 200, 100);
    n.endShape(CLOSE);  
    
    d = createShape();
    d.beginShape();
    d.vertex(200, 100);
    d.bezierVertex(100, 100, 100, 200, 100, 500);
    d.vertex(200, 100);
    d.bezierVertex(320, 0, 320, 300, 100, 500);
    d.bezierVertex(200, 320, 240, 100, 200, 100);
    d.endShape(CLOSE);   
    
    v = createShape();
    v.beginShape();
    v.vertex(200, 100);
    v.bezierVertex(100, 100, 100, 200, 100, 500);
    v.bezierVertex(320, 0, 320, 300, 100, 500);
    v.endShape(CLOSE);  
    
    p = createShape();
    p.beginShape();
    p.vertex(200, 100);
    p.bezierVertex(100, 100, 100, 200, 100, 500);
    p.vertex(200, 100);
    p.bezierVertex(320, 0, 320, 300, 90, 300);
    p.bezierVertex(200, 320, 240, 100, 120, 80);
    p.endShape(CLOSE);   
  }
  
  void update() {
    //
  }
  
  void draw() {
    for (Letter letter : letters) {
      letter.run();
    }
    strokeWeight(4);
    line(100, 500, 800,500);
    line(100, 200, 500,200);
  }
  
  void run() {
    update();
    draw();
  }

}
