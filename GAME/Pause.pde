void pause(){
  fill(#999999);
  rect(0,0,width/5,height);
  PFont maPolice = createFont("Times", 150*height/1440);
  textFont(maPolice, 50*height/1440);
  textAlign(TOP,CENTER);
  fill(000000);
  text("Reprendre", width/30 , 2*height/20);
  text("Sauvegarder", width/30,4*height/20);
  text("Options", width/30,6*height/20);
  text("Menu principal", width/30,8*height/20);
  text("Quitter le jeu", width/30,10*height/20);
  image(imgTuto1,width/2,height/2);
  textFont(maPolice, 150*height/1440);
  text("PAUSE",width/2,height/5);
  textFont(maPolice, 50*height/1440);
  text("D ou flèche droite: aller à droite", width/2,2*height/3-height/20);
  text("Q ou flèche gauche: aller à gauche", width/2,2*height/3);
  text("Espace: sauter", width/2,2*height/3+height/20);
  if(mouseX>width/30){
    if(mouseX<width/30+width/11){
      if(mouseY>2*height/20){
        if(mouseY<2*height/20+height/32){
          fill (#FFFFFF);
          text("Reprendre", width/30 , 2*height/20);
        }
      }
    }
  }
  if(mouseX>width/30){
    if(mouseX<width/30+width/9){
      if(mouseY>4*height/20){
        if(mouseY<4*height/20+height/32){
          fill (#FFFFFF);
          text("Sauvegarder", width/30 , 4*height/20);
        }
      }
    }
  }
  if(mouseX>width/30){
    if(mouseX<width/30+width/15){
      if(mouseY>6*height/20){
        if(mouseY<6*height/20+height/32){
          fill (#FFFFFF);
          text("Options", width/30 , 6*height/20);
        }
      }
    }
  }
  if(mouseX>width/30){
    if(mouseX<width/30+width/8){
      if(mouseY>8*height/20){
        if(mouseY<8*height/20+height/32){
          fill (#FFFFFF);
          text("Menu principal", width/30 , 8*height/20);
        }
      }
    }
  }
  if(mouseX>width/30){
    if(mouseX<width/30+width/9){
      if(mouseY>10*height/20){
        if(mouseY<10*height/20+height/32){
          fill (#FFFFFF);
          text("Quitter le jeu", width/30 , 10*height/20);
        }
      }
    }
  }
}