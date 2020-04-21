void Jeu() {

  fill(#999999);
  rect(0, height, width, -height*2/5+ 64*height/310);

  println (key);

  //Position + Direction
  if (GAME_Direction_Player==1) {
    image(imgPlayerR, GAME_X_Player, GAME_Y_Player);
  }
  if (GAME_Direction_Player==2) {
    image(imgPlayerL, GAME_X_Player, GAME_Y_Player);
  }


  if (GAME_SAUT==1) {

    GAME_T_SAUT=GAME_T_SAUT+2;

    GAME_Y_Player = height*3/5-  ((-(GAME_T_SAUT*GAME_T_SAUT)+100*GAME_T_SAUT)/(8/GAME_CoeffSaut));



    if (GAME_T_SAUT==100) {
      GAME_T_SAUT=0;
      GAME_SAUT=0;
    }
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

if (GAME_X_Player >= width-100){
  GAME_RIGHT_hitbox=1;
}
if (GAME_X_Player <= width-100){
  GAME_RIGHT_hitbox=0;
}


  if (Option_Control==2) {
    if (keyPressed) {

      if ((key=='d' | keySave =='d') & GAME_RIGHT_hitbox==0) {
        GAME_Key_Control=0;
        GAME_Direction_Player=1;
        GAME_Chrono_Vitesse = GAME_Chrono_Vitesse + GAME_Vitesse_Player;


        if (GAME_Chrono_Vitesse >= GAME_Delay_Vitesse) {
          GAME_Chrono_Vitesse=0;
          GAME_X_Player=GAME_X_Player+(600/Option_Hz);
        }
      }

      if ((key=='q' | keySave =='q') & GAME_LEFT_hitbox==0) {
        GAME_Key_Control=0;
        GAME_Direction_Player=2;
        GAME_Chrono_Vitesse = GAME_Chrono_Vitesse + GAME_Vitesse_Player;


        if (GAME_Chrono_Vitesse >= GAME_Delay_Vitesse) {
          GAME_Chrono_Vitesse=0;
          GAME_X_Player=GAME_X_Player-(600/Option_Hz);
        }
      }

      if (GAME_SAUT==0) { 
        if (key==' ' && GAME_SAUT==0) {
          GAME_Key_Control=0;
          GAME_SAUT=1;
        }
      }
    }
  }


  if (Option_Control==1) {
    if (keyPressed) {
      keyPressed();
      if ((keyCode ==RIGHT  | keySave =='d') & GAME_RIGHT_hitbox==0) {
        GAME_Key_Control=0;
        GAME_Direction_Player=1;
        GAME_Chrono_Vitesse = GAME_Chrono_Vitesse + GAME_Vitesse_Player;


        if (GAME_Chrono_Vitesse >= GAME_Delay_Vitesse) {
          GAME_Chrono_Vitesse=0;
          GAME_X_Player=GAME_X_Player+(600/Option_Hz);
        }
      }

      if ((keyCode ==LEFT | keySave =='q') & GAME_LEFT_hitbox==0) {
        GAME_Key_Control=0;
        GAME_Direction_Player=2;
        GAME_Chrono_Vitesse = GAME_Chrono_Vitesse + GAME_Vitesse_Player;


        if (GAME_Chrono_Vitesse >= GAME_Delay_Vitesse) {
          GAME_Chrono_Vitesse=0;
          GAME_X_Player=GAME_X_Player-(600/Option_Hz);
        }
      }

      if (GAME_SAUT==0) {
        if ((key==' ' && GAME_SAUT==0)) {
          GAME_Key_Control=0;
          GAME_SAUT=1;
        }
      }
    }
  }
}
