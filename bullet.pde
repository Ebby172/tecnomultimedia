class bullets {
  PVector pos;
  float vel, size;
  boolean hit;
  PImage bullet;


  bullets() {
    pos = new PVector(width, random(490, 635));
    vel = 8; 
    pos.x = width;
    pos.y = random(490, 625);
    size=50;
    hit = false;
    bullet = loadImage("bullet.png");
  }


  void dibujar() {
    image(bullet,pos.x, pos.y);
  }

  void move() {
    pos.x = pos.x - vel;
  }

  boolean col() {
    if (dist(this.pos.x, this.pos.y, run.player.pos.x, run.player.pos.y) <100) {
      return true;
    } else {
      return false;
    }
  }
}
