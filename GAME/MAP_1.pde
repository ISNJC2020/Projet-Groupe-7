void mapONE() {






  //MAP

  background(#303030);

  fill(#FFFFFF);
  rect(0+translationX, 0+translationY, 0.5*width, 0.2*width);
  rect(0.5*width+translationX, 0.1*width+translationY, 0.1*width, 0.1*width);
  rect(0.6*width+translationX, 0+translationY, 0.5*width, 0.2*width);



  textAlign(LEFT);
  PFont maPolice = createFont("Times", 25*height/1440);
  textFont(maPolice, 25*height/1440);
  //Tuto
  if (GAME_X_Player+translationX <= width/5+translationX) {
    image(imgTuto1, 5, 5);
    text("Utilisez Q et D ou les flèches pour vous déplacer respectivement à gauche et à droite", 10, 30+85*height/1000);
    text("Et la barre espace pour sauter", 10, 60+85*height/1000);
    text("Appuyez sur P pour mettre le jeu en pause et afficher les controls", 10, 90+85*height/1000);
  }

  if (GAME_X_Player+translationX <= 0.6*width+translationX && GAME_X_Player+translationX >= 0.3*width+translationX ) {

    text("Utilisez clic droit ou grauche pour attaquer", 0.02*width, 0.02*width);
    text("Après l'avoir mis KO dirigez vous vers lui et apuillez sur 'A' pour prendre le control de l'ennemi KO", 0.02*width, 0.04*width);
  }

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
