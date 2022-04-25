int x;
int y;

void setup () {
  size(600,600);
  colorMode(HSB, 360,100,100);
  background (64,14,99);
  textAlign (CENTER);
  int x  = width;
  int y = height;
  frameRate(50);
}

void draw () {
  background (64,14,99);
  fill(frameCount%360,90,97);
 textSize( 1 + (frameCount % 200) /3);
 text ("Catalina", 300,300);
 noStroke();
 
//+ mueve a la izquierda o arriba, - mueve a la derecha o abajo
 fill(0+(frameCount%60),90,97);
 circle(300- (x + frameCount%50),150,75); 
 fill(180+(frameCount%60),90,97);
 circle(300- (x-frameCount%50),400,75); 
 fill(60+(frameCount%60),90,97);
 circle(100- (x+frameCount%50),200-(y-frameCount%50),75);
 fill(120+(frameCount%60),90,97);
 circle(100- (x-frameCount%50),350-(y-frameCount%50),75);
 fill(240+(frameCount%60),90,97);
 circle(500- (x-frameCount%50),350-(y+frameCount%50),75);
 fill(300+(frameCount%60),90,97);
 circle(500-(x + frameCount%50),200-(y+frameCount%50),75);
}
