class Paisaje {
  PImage[] img =new PImage[2];
  int tiempo;
  boolean negro, blanco;
  Nubes nube1, nube2, nube3, nube4, nube5, nube6;
  Flora flor1, flor2, flor3, flor4, flor5, flor6, flor7;


  Paisaje(int time, boolean day, boolean night) {
    img[0] = loadImage ("fondo0.png");
    img[1] = loadImage ("fondo1.png");
    tiempo = time;
    blanco = day;
    negro =night;
    nube1= new Nubes (300, 100, 70, 35, 1);
    nube2= new Nubes (100, 200, 100, 50, -1);
    nube3 = new Nubes (50, 50, 100, 50, -1);
    nube4= new Nubes (400, 250, 50, 25, 1);
    nube5 = new Nubes (10, 175, 60, 30, -1);
    nube6= new Nubes (550, 25, 50, 25, 1);

    flor1 = new Flora (200, 400, 50, 50);
    flor2 = new Flora (20, 525, 75, 75);
    flor3 = new Flora (535, 350, 25, 25);
    flor4 = new Flora (75, 330, 10, 10);
    flor5 = new Flora (450, 475, 60, 60);
    flor6 = new Flora (410,335,15,15);
    flor7  =new Flora (350,460,55,55);
  }

  void dibujar () {
    image (img[tiempo], 0, 0);
    nube1.dibujar(tiempo);    
    nube2.dibujar(tiempo);  
    nube3.dibujar(tiempo);
    nube4.dibujar(tiempo);
    nube5.dibujar(tiempo);
    nube6.dibujar(tiempo);

    flor1.dibujar(tiempo);
    flor2.dibujar(tiempo);
    flor3.dibujar(tiempo);
    flor4.dibujar(tiempo);
    flor5.dibujar(tiempo);
    flor6.dibujar(tiempo);
    flor7.dibujar(tiempo);


    nube1.movimiento();
    nube2.movimiento();
    nube3.movimiento();
    nube4.movimiento();
    nube5.movimiento();
    nube6.movimiento();
  }
}
