void estrella1 () {
  pushMatrix();
  translate(poss1, 580);
  rotate(radians(giro));
  image(star, 0, 0);
  giro+=1.5;
  popMatrix();
}
void estrella2() {
  pushMatrix();
  translate(poss2, 580);
  rotate(radians(giro));
  image(star, 0, 0);
  giro2+=1.5;
  popMatrix();
}
void estrella3() {
  pushMatrix();
  translate(poss3, 580);
  rotate(radians(giro));
  image(star, 0, 0);
  giro3+=1.5;
  popMatrix();
}
