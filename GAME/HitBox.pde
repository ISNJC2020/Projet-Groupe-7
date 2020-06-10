void HitBox(){
 
  if (GAME_X_Player == 0){
    
  }
  
  
  if (GAME_X_Player >= width-64){
    HITBOX_RIGHT=1;
  }
  else {
    HITBOX_RIGHT = 0;
  }
  
  
  if (GAME_X_Player <= 0){ 
    HITBOX_LEFT=1;
  }
  else {
    HITBOX_LEFT = 0;
  }
  
  
  if (GAME_Y_Player >= height*3/5){ 
    HITBOX_DOWN = 1;
  }
  else {
    HITBOX_DOWN = 0;
  }
  if (GAME_X_Player == 0){
    
  }
  
  

  
}
