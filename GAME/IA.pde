int GAME_x_ennemi=0;
int GAME_y_ennemi=0;


void deplacement_ennemi(){
if (GAME_x_ennemi<GAME_X_Player && GAME_ennemi_hitbox_right == 0)
{
  GAME_x_ennemi+=1;
}
if (GAME_x_ennemi>GAME_X_Player && GAME_ennemi_hitbox_left == 0)
{
  GAME_x_ennemi-=1;
}
}