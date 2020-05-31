void Jeu() {



  fill(#999999);
  //rect(0, height, width, -height*2/5+ 64*height/310);




  //Position + Direction
  if (GAME_Direction_Player==1) {
    image(imgPlayerR, GAME_X_Player+translationX, GAME_Y_Player+translationY);
  }
  if (GAME_Direction_Player==2) {
    image(imgPlayerL, GAME_X_Player+translationX, GAME_Y_Player+translationY);
  }




  if (GAME_SAUT==1) {

    GAME_Y_Player = ((1.5*(t*t)-15*t)*(width/360)+GAME_Y_Player_Jump) ;

    if (HITBOX_DOWN == 1) {
      GAME_SAUT=0;
      t=0;
    }
  }


  if (HITBOX_DOWN == 0 && GAME_SAUT == 0) {
    println(GAME_Y_Player_Jump); 
    GAME_Y_Player = (1.5*(t*t)*(width/360));
  }
  if (HITBOX_DOWN == 1) {
    t=0;
    GAME_Y_Player_Jump = GAME_Y_Player;
  }





  if (keyPressed) {                   //controle de vison de la map
    if (key == '6') {
      translationX=translationX-echelle;}  
    if (key == '4') {
      translationX=translationX+echelle;}  
    if (key == '2') {
      translationY=translationY-echelle;}
    if (key == '8') {
      translationY=translationY+echelle;}
  }




  if (keyPressed) {
    if (key!=' ') {
      keySave=key;
      if (keyCode== RIGHT) {
        keySave='d';
      }
      if (keyCode== LEFT) {
        keySave='q';
      }
    }
  }




  if (Option_Control==2) {
    if (keyPressed) {




      if ((key=='d' || keySave =='d') && (HITBOX_RIGHT==0)) {
        GAME_Key_Control=0;
        GAME_Direction_Player=1;
        GAME_Chrono_Vitesse = GAME_Chrono_Vitesse + GAME_Vitesse_Player;


        if (GAME_Chrono_Vitesse >= GAME_Delay_Vitesse) {
          GAME_Chrono_Vitesse=0;
          GAME_X_Player=GAME_X_Player+(3)*echelle;
        }
      }

      if ((key=='q' || keySave =='q') && (HITBOX_LEFT==0)) {
        GAME_Key_Control=0;
        GAME_Direction_Player=2;
        GAME_Chrono_Vitesse = GAME_Chrono_Vitesse + GAME_Vitesse_Player;


        if (GAME_Chrono_Vitesse >= GAME_Delay_Vitesse) {
          GAME_Chrono_Vitesse=0;
          GAME_X_Player=GAME_X_Player-(3)*echelle;
        }
      }

      if (GAME_SAUT==0 && VerSaut==0) { 
        if (key==' ' && GAME_SAUT==0) {
          t=0;
          GAME_Y_Player_Jump=GAME_Y_Player;
          GAME_Key_Control=0;
          GAME_SAUT=1;
          GAME_Y_Player = GAME_Y_Player-1;
          HITBOX_DOWN = 0;
        }
      }
    }
  }
}
