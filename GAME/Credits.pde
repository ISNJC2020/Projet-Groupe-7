float y1;
void Credits() {
  background(#000000);

  y1 = y1-0.5*echelle;

  fill(255);
  PFont maPolice = createFont("Times", 50);
  textFont(maPolice, 50);
  textAlign(CENTER);
  text("Possession ", width/2, y1);
  text("Joliot-Curie Rennes Industry", width/2, y1+100);
  text("Editor", width/2, y1+150);

  text("Thibaut Rochas", width/2, y1+250);
  text("Programmer", width/2, y1+300);

  text("Thomas Duffy-Noblet", width/2, y1+400);
  text("Programmer", width/2, y1+450);

  text("Lucas Leconte", width/2, y1+550);
  text("Programmer", width/2, y1+600);

  text("Thibaut Rochas", width/2, y1+700);
  text("Scriptwriter", width/2, y1+750);

  text("Thomas Duffy-Noblet", width/2, y1+850);
  text("Scriptwriter", width/2, y1+900);

  text("Lucas Leconte", width/2, y1+1000);
  text("Scriptwriter", width/2, y1+1050);

  text("Thibaut Rochas", width/2, y1+1150);  
  text("Game Designer", width/2, y1+1200);

  text("Thibaut Rochas", width/2, y1+1300);
  text("Game Designer", width/2, y1+1350);

  text("Thomas Duffy-Noblet", width/2, y1+1450);
  text("Game Designer", width/2, y1+1500);

  text("Lucas Leconte", width/2, y1+1600);
  text("Game Designer", width/2, y1+1650);

  text("Thomas Duffy-Noblet", width/2, y1+1750);
  text("Dessinateur", width/2, y1+1800);
  
  text("Thibaut Rochas", width/2, y1+1900);
  text("Level Designer", width/2, y1+1950);
  

  text("C. Le Bihan", width/2, y1+2050);
  text("ISN Professor", width/2, y1+2100);
  
  text("Processing", width/2, y1+2200);
  text("Coding software", width/2, y1+2250);

  text("Thanks for playing", width/2, y1+2400);
  
  textAlign(LEFT);
  textFont(maPolice, 25);
  text ("Appuyez sur entrer pour quitter", width*2/100, height - width*2/100);
  
  if (keyPressed && key == ENTER){
  MODE = 1;
  }
  
}