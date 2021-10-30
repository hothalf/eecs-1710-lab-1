LetterGenerator lg;
String input ;

void setup() {
  size(800, 600, P2D);
  lg = new LetterGenerator(input, 0, height/2);
}

void draw() {
  background(127);
  
  lg.run(); 
}

//checks key typed https://processing.org/examples/charactersstrings.html
void keyTyped() {
  if ((key >= 'A' && key <= 'z') || key == ' ') {
    inputKey = str(key);
    letters.add(new Letter(inputKey, x, y));
    
  }
