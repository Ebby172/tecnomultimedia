class Nubes {
  int posx, posy, tamx, tamy;
  float vel;
  PImage[] nube = new PImage[2];

  Nubes(int x, int y, int tamax, int tamay, float speed) {
    nube[0] = loadImage ("nube0.png");
    nube[1] = loadImage ("nube1.png");
    posx = x ;
    posy = y;
    tamx = tamax;
    tamy = tamay;  
    vel=speed;
  }

  void dibujar (int time) {
    image (nube[time], posx, posy, tamx, tamy);
    
    posx += vel;
  }
  void movimiento() {
    if (posx < 0 || posx+tamx > width) {
      vel *= -1;
    }
  }
}
