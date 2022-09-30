class Flora {
  int posx, posy, tamx, tamy;
  PImage[] flor = new PImage[2];

  Flora (int x, int y, int tamax, int tamay) {
    flor[0] = loadImage ("flor0.png");
    flor[1] = loadImage("flor1.png");
    posx=x;
    posy = y;
    tamx= tamax;
    tamy= tamay;
  }

  void dibujar (int time) {
    image (flor[time], posx, posy, tamx, tamy);
    
  }
}
