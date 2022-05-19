int x,y,xmain,ymain,xsub,ysub,xcol,yfinal,intro,exit,drama;
PImage soul, saveOr, saveYe,pap1,sans1,undyne1,alphys,toriel,asgore,mettaton,toby,toby2,logo;
boolean dentroBoton = mouseX > 175 && mouseX < 485 && 
    mouseY > 350 && mouseY < 430; 
PFont standard,troll;
   
void setup (){
 size(600,600);
 background(0);
 textSize(100);
 textAlign(CENTER);
 imageMode(CENTER);
 colorMode(HSB,360,100,100);
 rectMode(CENTER);

 
 sans1=loadImage("sans1.png");
 pap1=loadImage("pap1.png");
 undyne1=loadImage("undyne2.png");
 soul=loadImage ("soul.png");
 saveOr=loadImage("save-or.png");
 saveYe=loadImage("save-ye.png");
 alphys=loadImage("alphys.png");
 toriel=loadImage("toriel.png");
 asgore=loadImage("asgore.png");
 mettaton=loadImage("mettaton.png");
 toby=loadImage("toby1.png");
 toby2=loadImage("toby2.png");
 standard=loadFont("Standard.vlw");
 troll=loadFont("sans.vlw");
 logo=loadImage("logo.png");
 
 exit=700;
 intro=-100;
 x=300;
 y=300;
 xmain=340;
 ymain=340;
 xsub=200;
 ysub=340;
 xcol=450;
 yfinal=2520;
 drama=0;
  textFont(standard);
}
 void draw(){ //Pantalla de inicio & titulo
 if (dentroBoton){ 
  background(0);
  personas();
  image(soul,mouseX,mouseY,25,25);} else {
 background(0,30);
 image(logo,300,200,600,77);
 boton ();
 image(soul,mouseX,mouseY,25,25);}
 if(yfinal<-130){
  personajes();
  image(soul,mouseX,mouseY,25,25);
   if(drama>2900){
   toby();
  image(soul,mouseX,mouseY,25,25);}}

 
} 

void mouseClicked(){ //Paso a creditos
if ( mouseX > 175 && mouseX < 485 && 
    mouseY > 350 && mouseY < 430) {
dentroBoton = true; }
if (mouseX > 260 && mouseX < 335 && 
    mouseY > 490 && mouseY < 525) {frameCount=-1;
  dentroBoton=false;}

 } 
