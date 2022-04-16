void setup (){
  size(600,600);
  colorMode(HSB, 360,100,100);
  background(196,40,99);
  noStroke();
  smooth();
}
void draw() {
  
  //gradiente cielo
  fill(196,30,99);
  rect(0,120,600,600);
  fill(196,20,99);
  rect(0,210,600,600);
  
  //Luz nubes
  fill(360,0,100);
  circle(475,88,60);
  circle(500,98,50);
  circle(530,108,30);
  circle(540,113,20);
  circle(546,113,10);
  triangle(550,118,550,123,555,122);
  circle(225,138,60);
  circle(250,148,50);
  circle(280,158,30);
  circle(290,163,20);
  triangle(300,168,300,173,305,172);
  
  //nubes
  fill(189,12,100);
  rect(400,120,150,5);
  triangle(400,120,400,125,395,123);
  triangle(550,120,550,125,555,123);
  rect(420,110,100,10);
  circle(475,90,60);
  circle(500,100,50);
  circle(450,100,50);
  circle(530,110,30);
  circle(420,110,30);
  circle(540,115,20);
  circle(410,115,20);
  rect(150,170,150,5);
  triangle(300,170,300,175,305,173);
  circle(225,140,60);
  circle(250,150,50);
  circle(200,150,50);
  circle(280,160,30);
  circle(170,160,30);
  circle(290,165,20);
  
  //Sombra nubes
  fill(193,67,62,44);
  //rect(400,120,150,5);
  triangle(400,120,400,125,395,125);
  triangle(550,120,550,125,555,125);
  arc(475,125,150,75,PI,TWO_PI);
  arc(225,175,150,75,PI,TWO_PI);
  
  stroke(0);
 strokeWeight(1);
  
  //montañas fondo
  stroke(180,70,80);
  fill(170,70,90);
  triangle(290,300,390,300,340,260);
  strokeWeight(5);
  stroke(55,43,100,80);
  line(340,265,390,300);
  noStroke();
  fill(165,67,62,70);
  triangle(290,300,390,300,340,275);
  strokeWeight(1);
  stroke(168,70,80);
  fill(158,70,90);
  triangle(320,300,460,300,400,260);
  strokeWeight(5);
  stroke(55,43,100,95);
  line(397,260,457,300);
  noStroke();
  fill(165,67,62,70);
  triangle(320,300,460,300,400,275);
  strokeWeight(1);
  stroke(144,70,80);
  fill(144,70,90);
  triangle(150,300,300,300,200,100);
  strokeWeight(4);
  stroke(55,43,100,80);
  line(200,103,300,300);
  noStroke();
  fill(165,67,62,70);
  triangle(150,300,300,300,188,150);
  strokeWeight(1);
  stroke(133,70,80);
  fill(133,70,90);
  triangle(-100,300,150,300,40,100);
  strokeWeight(5);
  stroke(55,43,100,80);
  line(40,105,150,300);
  noStroke();
  fill(165,67,62,70);
  triangle(-100,300,150,300,7,150);
 
  
  //montaña frente
  strokeWeight(1);
  stroke(88,70,80);
  fill(88,70,90);
  triangle(0,300,240,300,120,70);
  strokeWeight(5);
  stroke(55,43,100,80);
  line(120,77,240,300);
  noStroke();
  fill(165,67,62,70);
  triangle(0,300,240,300,96,120);

  
   //pasto gradiente
  fill(88,70,90);
  rect(0,299,600,600);
  fill(80,70,90);
  rect(0,400,600,600);
  fill(75,70,90);
  rect(0,500,600,600);
 
  
  //rio
  fill(202,61,99);
  ellipse(460,339,140,80);
  fill(178,27,100,80);
  ellipse(460,339,140,80);
  fill(202,61,99);
  ellipse(455,339,140,80);
  ellipse(480,410,120,80);
  fill(178,27,100,80);
  ellipse(480,410,120,80);
  fill(202,61,99);
  ellipse(485,410,120,80);
  ellipse(463,482,140,80);
  fill(178,27,100,80);
  ellipse(463,482,140,80);
  fill(202,61,99);
  ellipse(458,482,140,80);
  ellipse(520,560,200,120);
  fill(178,27,100,80);
  ellipse(520,560,200,120);
  fill(202,61,99);
  ellipse(525,560,200,120);
  
  fill(193,66,63,80);
  ellipse(425,340,137,80);
  ellipse(515,410,120,80);
  ellipse(428,482,140,80);
  ellipse(555,560,200,120);
   
  fill(88,70,90);
  ellipse(420,340,140,80);
  fill(80,70,90);
  ellipse(520,410,120,80);
  ellipse(423,482,140,80);
  fill(75,70,90);
  ellipse(560,560,200,120);
  
  
  
  //correccion pasto
  fill(88,70,90);
  rect(530,340,70,60);
  triangle(530,360,530,400,460,400);
  fill(75,70,90); 
  rect(525,500,80,5); 
  rect(350,500,90,25);
  triangle(440,500,440,525,470,500);
  
  //Bosque troncos 
  stroke(29,69,65);
  strokeWeight(5);
  line(220,350,220,365);
  line(210,350,210,360);
  line(200,350,200,365);
  line(190,350,190,360);
  line(180,350,180,361);
  line(170,340,170,355);
  line(160,340,160,360);
  line(150,340,150,350);
  line(140,330,140,345);
  line(133,320,133,335);
  line(230,350,230,360);
  line(240,350,240,365);
  line(250,350,250,360);
  line(260,350,260,361);
  line(270,340,270,355);
  line(280,340,280,360);
  line(290,340,290,350);
  line(300,330,300,345);
  line(307,320,307,335);
  
  noStroke();
  
  
  
  //Bosque hojas
  fill(100,79,67);
  ellipse(220,320,180,60);
  circle(220,300,25);
  circle(210,300,25);
  circle(200,300,25);
  circle(190,305,25);
  circle(185,302,25);
  circle(175,303,25);
  circle(165,305,25);
  circle(155,309,25);
  circle(145,313,25);
  circle(138,315,20);
  circle(230,300,25);
  circle(240,300,25);
  circle(250,305,25);
  circle(255,302,25);
  circle(265,303,25);
  circle(275,305,25);
  circle(285,309,25);
  circle(295,313,25);
  circle(302,315,20);
  
  circle(220,342,25);
  circle(210,342,25);
  circle(200,342,25);
  circle(190,340,25);
  circle(180,338,25);
  circle(170,335,25);
  circle(160,332,25);
  circle(150,328,25);
  circle(137,320,20);
  circle(230,342,25);
  circle(240,342,25);
  circle(250,340,25);
  circle(260,338,25);
  circle(270,335,25);
  circle(280,332,25);
  circle(290,328,25);
  circle(300,320,20);
  
  //bosque luces y sombras
  fill(55,43,100,80);
  ellipse(220,317,185,60);
  fill(100,79,67);
  ellipse(220,320,175,57);
  fill(154,62,53,80);
  ellipse(220,340,180,70);
  
  //casa
  fill(29,80,63);
  quad(190,365,195,377,235,377,225,365);
  fill(44,24,96);
  quad(190,370,190,395,225,395,225,370);
  quad(225,370,225,395,229,392,229,372);
  fill(29,80,63,80);
  quad(190,370,190,395,220,395,220,370);
  fill(29,87,82);
  quad(190,365,185,380,220,380,226,365);
  fill(29,80,63,90);
  quad(188,370,185,380,220,380,223,370);
  
  stroke(51,36,98,90);
  strokeWeight(4);
  line(190,367,226,367);
  
  noStroke();
  
  //Huerta
  fill(36,78,62);
  quad(200,405,180,430,190,430,210,405);
  quad(185,405,165,430,175,430,195,405);
  quad(170,405,150,430,160,430,180,405);
  arc(205,405,10,3,PI,TWO_PI);
  arc(190,405,10,3,PI,TWO_PI);
  arc(175,405,10,3,PI,TWO_PI);
  
  stroke(24,48,41,80);
  strokeWeight(2);
  line(188,429,208,405);
  line(173,429,193,405);
  line(158,429,178,405); 
 
 stroke(51,36,98,90);
 line(203,404,185,427);
 line(188,404,170,427);
 line(173,404,155,427);
 
  noStroke();
  
  fill(24,48,41,80);
  arc(185,430,10,5,PI,TWO_PI);
  arc(170,430,10,5,PI,TWO_PI);
  arc(155,430,10,5,PI,TWO_PI);
  
}
