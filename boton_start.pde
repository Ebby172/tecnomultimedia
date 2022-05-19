 void boton(){
 if(mouseX > 175 && mouseX < 485 && 
    mouseY > 350 && mouseY < 430){
    fill(60,98,100);
    stroke(60,98,100);
    image(saveYe,220,390,70,72);
  }else{
    stroke (32,99,100);
    fill(32,99,100);
    image(saveOr,220,390,80,82);
  }
 strokeWeight(5);
 noFill();
 rect(300,390,250,80);
 textSize(40);
 text("START",340,405);
 
 }
