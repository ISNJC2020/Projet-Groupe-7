
class objet_ennemi {


  float GAME_x_ennemi = 0.8*width;
  float GAME_y_ennemi = 0;
  int GAME_ennemi_assom = 0;

  void deplacement_ennemi() {

    if (MAP == 1) {
      if ((GAME_x_ennemi+translationX*height/300+translationX >= 1.1*width+translationX) || (GAME_x_ennemi+translationX >= (0.5*width+translationX)-32*height/300) && (GAME_x_ennemi+translationX <= (0.6*width+translationX)) && (GAME_y_ennemi+translationY <= 0.1*width+translationY)) {  
        GAME_ennemi_hitbox_right = 1;
      } else {
        GAME_ennemi_hitbox_right = 0;
      }
      if ((GAME_x_ennemi+translationX <= 0+translationX) || (GAME_x_ennemi >= (0.5*width+translationX)-32*height/300) && (GAME_x_ennemi+translationX <= (0.6*width+translationX)) && (GAME_y_ennemi+translationY <= 0.1*width+translationY) || GAME_x_ennemi+translationX <= 0.5*width+translationX) {
        GAME_ennemi_hitbox_left = 1;
      } else {
        GAME_ennemi_hitbox_left = 0;
      }
      if (GAME_y_ennemi+translationY+32*height/300 >= (0.2*width+translationY)) { 
        GAME_ennemi_hitbox_down = 1;
      } else {
        GAME_ennemi_hitbox_down = 0;
      }
    }


    if (GAME_ennemi_assom == 0) {

      if (GAME_x_ennemi<GAME_X_Player && GAME_ennemi_hitbox_right == 0)
      {
        GAME_x_ennemi=GAME_x_ennemi+(2*echelle);
      }
      if (GAME_x_ennemi>GAME_X_Player && GAME_ennemi_hitbox_left == 0)
      {
        GAME_x_ennemi=GAME_x_ennemi-(2*echelle);
      }
      if (GAME_ennemi_hitbox_down==0)
      {
        GAME_y_ennemi = (1.5*(t*t)*(width/360));
      }
    }

    if (dashON == 1 && GAME_X_Player >= GAME_x_ennemi-32*height/300 && GAME_X_Player<=GAME_x_ennemi+32*height/300) {
      GAME_ennemi_assom = 1;
    }

    if (dashON == 0 && GAME_X_Player >= GAME_x_ennemi-32*height/300 && GAME_X_Player<=GAME_x_ennemi+32*height/300 && GAME_ennemi_assom == 0 && PV_Timer >= 70) {
      PV = PV-1;
      PV_Timer = 0;
    }

    if ((keyPressed && key == 'a' && possession == 0 && Timer >= 70 )) {
      if (((GAME_X_Player >= GAME_x_ennemi-32*height/300 && GAME_X_Player<=GAME_x_ennemi+32*height/300 && GAME_ennemi_assom == 1))) {
        Timer = 0;

        possession = 1;
      }
    }
    if (possession == 1) {
      GAME_x_ennemi=GAME_X_Player;
      GAME_y_ennemi=GAME_Y_Player;
    }

    if (((keyPressed && key == 'a') && possession == 1) && Timer >= 70) {
      Timer = 0;
      possession = 0;
      println ("possession off");
    }
  }




  void ennemi() {

    if (GAME_ennemi_assom == 0) {


      if (GAME_x_ennemi>GAME_X_Player)
      {
        image(imgEnnemiL, GAME_x_ennemi+translationX, GAME_y_ennemi+translationY);
      }
      if (GAME_x_ennemi<GAME_X_Player)
      {
        image(imgEnnemiR, GAME_x_ennemi+translationX, GAME_y_ennemi+translationY);
      }
    }
    if (GAME_ennemi_assom == 1) {
      if (possession == 0) {
        image(imgEnnemi2, GAME_x_ennemi+translationX, GAME_y_ennemi+translationY);
      }
      if (possession == 1) {
        if (GAME_Direction_Player==1) {
          image(imgEnnemiR, GAME_X_Player+translationX, GAME_Y_Player+translationY);
        }
        if (GAME_Direction_Player==2) {
          image(imgEnnemiL, GAME_X_Player+translationX, GAME_Y_Player+translationY);
        }
      }
    }




    if (PV == 0) {
      GAME_x_ennemi = 0.8*width;
      GAME_y_ennemi = 0;
      GAME_ennemi_assom = 0;
    }
  }
}
