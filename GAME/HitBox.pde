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
  
  
  if (GAME_x_ennemi >= width-64){
    HITBOX_RIGHT=1;
  }
  else {
    HITBOX_RIGHT = 0;
  }
  
  
  if (GAME_x_ennemi <= 0){ 
    HITBOX_LEFT=1;
  }
  else {
    HITBOX_LEFT = 0;
  }
  
  
  if (GAME_y_ennemi >= height*3/5){ 
    GAME_ennemi_hitbox_down = 1;
  }
  else {
    GAME_ennemi_hitbox_down = 0;
  }
  
}