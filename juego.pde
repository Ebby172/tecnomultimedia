class juego {
  float bullx, bully, vels, xs;
  int score, velb, velf, xb, xf;
  boolean up, grav, safe;
  String screen;
  PImage cielo, suelo, fondo, logo, win, lose;
  jugador player;
  SoundFile wasHit, jump;
  ArrayList<bullets> dardos = new ArrayList<bullets>();

  juego(PApplet p) {
    cielo = loadImage("sky.png");
    fondo = loadImage("hills.png");
    suelo = loadImage("floor.png");
    logo = loadImage("logo.png");
    win = loadImage("won.png");
    lose = loadImage("lost.png");
    vels = 0.5;
    velb = 3;
    velf = 10;
    xs= 0.5;
    xb= 0;
    xf= 0;
    colorMode(HSB, 360, 100, 100);
    imageMode(CENTER);
    textAlign(CENTER, CENTER);
    screen="start";
    up = true;
    grav = false;
    safe=true;
    score=0;
    player = new jugador ();
    textSize(35);
    dardos.add(new bullets());
    wasHit = new SoundFile(p, "hit.mp3");
    jump = new SoundFile(p, "jump.mp3");
  }


  void run() {
    fill(57, 58, 100);
    if (screen.equals("start")) {
      start();
    } else if (screen.equals("game")) {
      game();
    } else if (screen.equals("lost")) {
      lost();
      if (mousePressed) {
        screen="game";
        score = 0;
        frameCount = 0;
        safe=true;
      }
    } else if (screen.equals("won")) {
      won();
      if (mousePressed) {
        screen="credits";
      }
    } else if (screen.equals("credits")) {
      credits();
      if (keyPressed) {
        screen="start";
      }
    }
  }


  void start() {
    background(0);
    image(logo, width/2, 200);
    text("Esquiva a los enemigos, reune 2000 puntos para huir \n \n Salta y avanza entre pantallas con el click", width/2, 525);
    if (mousePressed && screen.equals("start")) {
      screen = "game";
    }
  }

  void game() {
    scroll();
    jump.amp(0.1);
    wasHit.amp(0.5);
    if (frameCount % 75 == 0) {
      dardos.add(new bullets());
    }
    if (mousePressed && player.pos.y > 400) {
      player.aplicar(up);
      jump.play();
    }
    if (safe) {
      score++;
    }
    if (!safe) {
      wasHit.play();
      screen = "lost";
    }
    if (score == 2000) {
      screen = "won";
    }
    text(score, width/2, 100);
    player.update(grav);
    player.dibujar();
    for (int i = dardos.size() - 1; i >= 0; i--) {
      bullets p = dardos.get(i);
      if (p.col()) {
        safe=false;
        dardos.remove(i);
      } else {
        safe=true;
      }
      p.move();
      p.dibujar();
      if (p.pos.x < -p.size) {
        dardos.remove(i);
      }
    }
  }

  void scroll() {
    pushStyle();
    imageMode(CORNER);
    xs = xs - vels;
    xb = xb - velb;
    xf = xf - velf;
    if (xs < -1200) {
      xs= 0;
    }
    if (xb < -1200) {
      xb= 0;
    }
    if (xf < -1200) {
      xf= 0;
    }
    image (cielo, xs, 0);
    image (cielo, xs+1200, 0);
    image (fondo, xb, 0);
    image (fondo, xb+1200, 0);
    image (suelo, xf, 590);
    image (suelo, xf+1200, 590);
    popStyle();
  }

  void lost() {
    background(0);
    fill(0,100,100);
    text("HAS CAIDO! \n La luna ha perdido su luz \n  La noche es oscura", width/2, 100);
    image(lose, width/2, 370);
    text("Haz click para volverlo a intentar", width/2, 600);
  }

  void won() {
    background(0);
    text("GANASTE! \n \n Haz logrado escapar!", width/2, 100);
    text("Haz click para avanzar a los creditos", width/2, 600);
    image(win, width/2, 400);
  }

  void credits() {
    background(0);
    text("CREDITOS \n \nTecnologia Multimedia \n Comision 2 \n Profesor: Matias Jauregui Lorda \n \n Codigo y graficos: \n Alves Catalina \n 91393/4 \n \n Efectos de sonido: \n Toby Fox", width/2, 270);
  }
}
