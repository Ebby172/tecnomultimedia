class jugador {
  PVector pos;
  PVector vel;
  PVector acc;
  PImage[] mr = new PImage[2];
  int i;

  jugador () {
    pos = new PVector(150, 550);
    vel = new PVector (0, 0);
    acc = new PVector();
    mr[0] = loadImage("mrwalk0.png");
    mr[1] = loadImage ("mrwalk1.png");
    i =0;
  }

  void aplicar(boolean force) {

    if (force) {
      vel.y = -10;
      acc.y = 0.30;
      i=1;
    }  
    if (pos.y >550) {
      vel.y = 0;
      acc.y=0;
      pos.y = 550;
      i=0;
    }
  }
  void update (boolean gravedad) {
    aplicar(gravedad);
    vel.add(acc);
    pos.add(vel);
  }
  void dibujar () {
    image(mr[i],pos.x, pos.y);
  }
}
