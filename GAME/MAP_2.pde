void mapTWO() {






  //MAP

  background(#303030);

  fill(#FFFFFF);
  rect(0+translationX, 0+translationY, 0.5*width, 0.2*width);
  rect(0.5*width+translationX, 0.1*width+translationY, 0.1*width, 0.1*width);
  rect(0.6*width+translationX, 0+translationY, 0.5*width, 0.2*width);

  fill(#973C1F);
  rect(1.1*width+translationX-2, 0.1*width+translationY, 8, 0.1*width);
  fill(#A0A0A0);
  rect(1.1*width+translationX-8, 0.15*width+translationY, 4, 4);
  fill(#FFFFFF);


  textAlign(LEFT);
  PFont maPolice = createFont("Times", 25*height/1440);
  textFont(maPolice, 25*height/1440);






  if ((GAME_X_Player >= 0.6*width) && translationX >= -0.4*width) {
    translationX=translationX-5*echelle;
  }
  if ((GAME_X_Player <= 0.5*width) && translationX <= 0.1*width) {
    translationX=translationX+5*echelle;
  }


  textAlign(CENTER);


  //HIT-BOX :

  //Sol
  if (GAME_Y_Player+translationY+32*height/300 >= (0.2*width+translationY)) { 
    HITBOX_DOWN = 1;
  } else {
    HITBOX_DOWN = 0;
  }




  //Plafonts
  if ((GAME_X_Player+translationX >= (0.5*width+translationX)-32*height/300) && GAME_X_Player+translationX <= (0.6*width+translationX)) { 
    VerSaut = 1;
  } else {
    VerSaut = 0;
  }


  //Murs Gauche
  if ((GAME_X_Player+translationX <= 0+translationX) || (GAME_X_Player >= (0.5*width+translationX)-32*height/300) && (GAME_X_Player+translationX <= (0.6*width+translationX)) && (GAME_Y_Player+translationY <= 0.1*width+translationY)) {
    HITBOX_LEFT = 1;
  } else {
    HITBOX_LEFT = 0;
  }



  //Murs Droit
  if (((GAME_X_Player+32*height/300+translationX >= 1.1*width+translationX) || (GAME_X_Player+translationX >= (0.5*width+translationX)-32*height/300) && (GAME_X_Player+translationX <= (0.6*width+translationX)) && (GAME_Y_Player+translationY <= 0.1*width+translationY))) {  
    HITBOX_RIGHT = 1;
  } else {
    HITBOX_RIGHT = 0;
  }



  //Spawn Ennemis

  for (int i = 0; i < objets_ennemis.length; i++) {
    objets_ennemis[i].deplacement_ennemi();
    objets_ennemis[i].ennemi();
  }
}
