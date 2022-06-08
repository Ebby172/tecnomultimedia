//https://www.youtube.com/watch?v=y6boBsv2jkc

int  tam;
float giro;
boolean click;
void setup() {
  size(500, 500);
  background(255);
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  tam=400;
}

void draw() {
  background(50);
  translate (width/2, height/2);
  mandala();
}

void mandala() {
  float esc = map(mouseX, 0, width, 0.5, 5);
  scale(esc);
  for (int i=0; i<10; i++) {
    if (click) {
      strokeWeight(15);
      stroke(i*48, 50, 40);
      fill(i*48, 80, 90);
      forma();
    } else {
      if (i%2==0) {
        stroke(0);
        fill(0);
      } else {
        stroke(0);
        fill(0, 0, 100);
      }
      forma();
    }
  }
}

void forma() {
  scale(0.75);
  rotate(radians(giro));
  square(0, 0, tam);
  circle(0, 0, tam);
  giro+=0.1;
}

void mouseClicked() {
  click=true;
  if (mouseX > 220 && mouseX<255 && mouseY > -220 && mouseY < 255) {
    click=false;
    strokeWeight(1);
    frameCount=-1;
  }
}
