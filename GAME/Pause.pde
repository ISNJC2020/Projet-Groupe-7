void pause() {
  if (keyPressed) {

    if (key == 'p' && Timer >= 60) {
      if (PAUSE == 0) {
        PAUSE =1;
        Timer = 0;
        println ("OFF");
      }
    }
  }
  if (keyPressed) {
    if (key == 'p' && Timer >= 60) {
      if (PAUSE == 1) {
        PAUSE = 0;
        Timer = 0;
        println ("ON");
      }
    }
  }


  if (PAUSE==1) {
    fill(#999999);
    rect(0, 0, width/5, height);
    rect(width*4/5, 0, width/5, height);
    PFont maPolice = createFont("Times", 150*height/1440);
    textFont(maPolice, 50*height/1440);
    textAlign(TOP, CENTER);
    fill(000000);
    text("Reprendre", width/30, 2*height/20);
    text("Sauvegarder", width/30, 4*height/20);
    text("Options", width/30, 6*height/20);
    text("Menu principal", width/30, 8*height/20);
    text("Quitter", width/30, 10*height/20);

    textFont(maPolice, 150*height/1440);
    textAlign(CENTER);
    text("PAUSE", width/2, height/2);
    textAlign(TOP, LEFT);
    textFont(maPolice, 40*height/1440);
    text("CONTROLS :", width*405/500, height*1/20);
    textFont(maPolice, 30*height/1440);
    text("D ou flèche droite: aller à droite", width*405/500, height*3/20);
    text("Q ou flèche gauche: aller à gauche", width*405/500, height*4/20);
    text("Espace: sauter", width*405/500, height*5/20);

    textAlign(TOP, CENTER);
    textFont(maPolice, 50*height/1440);

    if (mouseX>width/30) {
      if (mouseX<width/30+width/11) {
        if (mouseY>2*height/20) {
          if (mouseY<2*height/20+height/32) {
            fill (#FFFFFF);
            text("Reprendre", width/30, 2*height/20);
            if (mousePressed && Timer >= 30)
            {
              PAUSE=0;
            }
          }
        }
      }
    }
    if (mouseX>width/30) {
      if (mouseX<width/30+width/9) {
        if (mouseY>4*height/20) {
          if (mouseY<4*height/20+height/32) {
            fill (#FFFFFF);
            text("Sauvegarder", width/30, 4*height/20);
            if (mousePressed && Timer >= 30)
            {
            }
          }
        }
      }
    }
    if (mouseX>width/30) {
      if (mouseX<width/30+width/15) {
        if (mouseY>6*height/20) {
          if (mouseY<6*height/20+height/32) {
            fill (#FFFFFF);
            text("Options", width/30, 6*height/20);
            if (mousePressed && Timer >= 30)
            {
              PAUSE=0;
              MODE=3;
            }
          }
        }
      }
    }
    if (mouseX>width/30) {
      if (mouseX<width/30+width/8) {
        if (mouseY>8*height/20) {
          if (mouseY<8*height/20+height/32) {
            fill (#FFFFFF);
            text("Menu principal", width/30, 8*height/20);
            if (mousePressed && Timer >= 30)
            {
              PAUSE=0;
              MODE=1;
              t=0;
              MAP = 0;
              GAME_SAUT=0;
              GAME_X_Player=0;
              GAME_Y_Player=0;
            }
          }
        }
      }
    }
    if (mouseX>width/30) {
      if (mouseX<width/30+width/9) {
        if (mouseY>10*height/20) {
          if (mouseY<10*height/20+height/32) {
            fill (#FFFFFF);
            text("Quitter", width/30, 10*height/20);
            if (mousePressed && Timer >= 30)
            {
              exit();
            }
          }
        }
      }
    }
  }
}
