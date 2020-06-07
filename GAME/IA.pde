int GAME_x_ennemi;
int GAME_y_ennemi;


void deplacement_ennemi(){
if (GAME_x_ennemi<GAME_X_Player+translationX && GAME_ennemi_hitbox_right == 0)
{
  GAME_x_ennemi+=0.5;
}
if (GAME_x_ennemi>GAME_X_Player+translationX && GAME_ennemi_hitbox_left == 0)
{
  GAME_x_ennemi-=0.5;
}
if (GAME_ennemi_hitbox_down==0)
{
  GAME_y_ennemi+=2;
}
}
