void personajes(){  
  intro+=2;
  exit-=2;
  drama+=2;
  image(pap1,intro,200,130,200);
  image(sans1,exit,450,150,200);
  
textSize(30);
fill(60,98,100);
text("Papyrus",intro-150,200);
textSize(20);
fill(360,0,100);
text("By Toby & Temmie",intro-150,250);
textSize(30);
fill(60,98,100);
textFont(troll);
text("Sans",exit+150,450);
textFont(standard);
textSize(20);
fill(360,0,100);
text("By Toby \nSpecial Inspiration \nJN Wiedle",exit+155,490);

image(undyne1,intro-600,200,150,200);
image(alphys,exit+600,450,224,200);
textSize(30);
fill(60,98,100);
text("Undyne",intro-750,170);
textSize(20);
fill(360,0,100);
text("Design by Toby \nArmor by Temmie \nFashion Help: \n JN Wiedle & Gigi DG",intro-750,200);
textSize(30);
fill(60,98,100);
text("Alphys",exit+800,450);
textSize(20);
fill(360,0,100);
text("Design by Toby",exit+800,490);

image(toriel,intro-1200,200,146,200);
image(asgore,exit+1200,450,271,200);
textSize(30);
fill(60,98,100);
text("Toriel",intro-1350,200);
textSize(20);
fill(360,0,100);
text("By Toby",intro-1350,250);
textSize(30);
fill(60,98,100);
text("Asgore",exit+1400,450);
textSize(20);
fill(360,0,100);
text("By Toby",exit+1400,490);

image(mettaton,300,drama-2000,196,200);
textSize(30);
fill(60,98,100);
text("Mettaton",300,drama-2250);
textSize(20);
fill(360,0,100);
text("By Toby \nSpecial Inspiration \nBob Sparker, Sarah, and JN Wiedle",300,drama-2200);

}
