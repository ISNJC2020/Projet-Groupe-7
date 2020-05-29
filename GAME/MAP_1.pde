void map() {
  background(#303030);
  
  fill(#FFFFFF);
  rect(0+translationX , 0+translationY , 0.5*width , 0.2*width);
  rect(0.5*width+translationX , 0.1*width+translationY , 0.1*width , 0.1*width);
  rect(0.6*width+translationX , 0+translationY , 0.5*width , 0.2*width);
  


  if (GAME_Y_Player+32*height/300 >= (0.2*width+translationY)){ 
    HITBOX_DOWN = 1;
  }
  else {
    HITBOX_DOWN = 0;
  }
  
  if (GAME_X_Player >= (0.5*width+translationX)){ 
    VerSaut=1;
  }
  else {
    VerSaut=0;
  }
}
