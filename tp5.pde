juego run;
import processing.sound.*;
void setup() {
  size (1200, 700);
  background(255);
  imageMode(CENTER);
  run = new juego (this);
}

void draw() {
  run.run();
}
