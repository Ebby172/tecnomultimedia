void juego() {
  calcen();
  image (bckgrnd, width/2, height/2);
  image(floor, width/2, 650);
  image(star, 50, 35);
  image(goal, 1125, 570, 100, 100);
  text("x " + cant, 125, 25);
  if (going_left) {
    image( mrr[c], mrx, mry );
  } else {
    image( mr[c], mrx, mry );
  }
  enemigos(300,550,850);
  if (mrx<poss1-70) {
    estrella1();
  }
  if (mrx<poss2-70) {
    estrella2();
  }
  if (mrx<poss3-70) {
    estrella3();
  }
  if (mrx>poss1-70) {
    cant=1;
    if (mrx>poss2-70) {
      cant=2; 
      if (mrx>poss3-70) {
        cant=3;
      }
    }
  }
  check();
}

void calcen(){
  updown();
  
}

void updown(){
  if (goingUp && !up){
    up=true;
    updir=1;
    p++;
    }else if(up && updir==1 && posY<topeup){
    updir=-1;p++;} else if(up && updir==-1 && posY>topePiso){
      up=false;p++;} else if (up && updir ==1){
       posY-=veloup;p++;} else if (up && updir == -1){
         posY+=veloup;p++;}}
