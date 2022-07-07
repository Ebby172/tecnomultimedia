//https://youtu.be/hesEr87MjR0

PImage[] mr = new PImage[3];
PImage[] mrr = new PImage[3];
PImage[] bird = new PImage [3];
int c = 0, mrx=100, poss1=400, poss2=700, poss3=1000, cant=0, p=0, updir, veloup =6, posY=600, topeup=250, topePiso=570, mry=550, posen1=300, posen2=550, posen3=850;
int velcred=300;
boolean going_left, up, goingUp=true;
PImage bckgrnd, floor, star, logo, goal, nap,monch;
float giro, giro2, giro3;
String estado;
PFont fuente;

void setup() {
  size(1200, 700);
  imageMode( CENTER );
  textAlign(CENTER, CENTER);
  frameRate(24);
  colorMode(HSB, 360,100,100);
  for ( int i = 0; i < mr.length; i++ ) {
    mr[i] = loadImage( "mrwalk"+i+".png" );
    mrr[i] = loadImage( "mrwalkr"+i+".png" );
    bird[i] = loadImage ("bird"+i+".png");
  }
  bckgrnd = loadImage ("background.png");
  floor=loadImage("floor.png");
  star=loadImage("star.png");
  logo=loadImage("logo.png");
  goal=loadImage("goal.png");
  nap=loadImage("victoryNap.png");
  monch=loadImage("monch.png");
  fuente=loadFont("Consolas-Bold-48.vlw");
  estado="inicio";
  textFont(fuente);
}

void draw() {
 if (estado.equals("inicio")) {
    textSize(40);
    background(0);
    image(logo, width/2, 200);
    fill(57,58,100);
    text("Como jugar", width/2, 500);
  } else  if (estado.equals("instrucciones")) {
    textSize(40);
    background(0);
    text("A y D para moverse \n \nJunta las estrellas y llega al final \n \nEvita a los enemigos", width/2, 250);
    image(star, width/2, 550, 100, 100);
    text("Presione para niciar juego", width/2, 650);
  } else if (estado.equals("jugando")) {
    juego();
  }
}

void keyPressed() {
  if ( key == 'd') {
    going_left = false;
    mrx+=10; 
    c++;
    if ( c == mr.length )
      c = 0;
  }
  if ( key == 'a') {
    going_left = true;
    mrx-=10; 
    c++;
    if ( c == mr.length )
      c = 0;
  }
  if (keyCode == ENTER && estado.equals("derrota") || keyCode == ENTER && estado.equals("creditos")){
  reinicio();
  }
  if(keyCode == ENTER && estado.equals("victoria")){
    creditos();
  }
}

void mousePressed() {
  if ( mouseX > 550 && mouseX < 650 && 
    mouseY > 500 && mouseY < 600 && estado.equals("instrucciones")) {
    estado="jugando";
  }
  if (mouseX>490 && mouseX<710&& mouseY > 490 && mouseY < 520 && estado.equals("inicio")) {
    estado="instrucciones";
  }
}
