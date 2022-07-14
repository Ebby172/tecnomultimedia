void check() {
  if (cant==3 && mrx>=1090) {
    estado="victoria";
  } else if (dist(mrx, mry, 300, posY)<75 || dist(mrx, mry, 550, posY)<75 || dist(mrx, mry, 850, posY)<75) {
    estado="derrota";}
   if (estado.equals("derrota")) {
    derrota();}
    if (estado.equals("victoria")) {
    victoria();
  }
   if (estado.equals("creditos")) {
    creditos();
  }
}

void victoria() {
  fill(57,58,100);
  background(0);
  text("GANASTE! \n \n Todas las estrellas han sido recuperadas!", width/2, 200);
  text("Presiona ENTER para avanzar a los creditos", width/2,600);
  image(nap,width/2,450);
  //rect(300,300,600,300);
}

void derrota() {
  fill(0,100,100);
  background(0);
  text("HAS CAIDO! \n Las estrellas se han perdido! \n  La noche es oscura", width/2, 200);
  image(monch,width/2,450);
  text("Presiona ENTER para volverlo a intentar",width/2,600);
}

void creditos() {
  estado="creditos";
  velcred--;
  background(0);
  text("CREDITOS \n \nTecnologia Multimedia \n Comision 2 \n Profesor: Matias Jauregui Lorda \n \n Codigo y graficos: \n Alves Catalina \n 91393/4", width/2, velcred);
}

void reinicio(){
  estado="inicio";
  mrx=100;
}
