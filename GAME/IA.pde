int GAME_x_ennemi;
int GAME_y_ennemi;

void deplacement_ennemi(){
if (GAME_x_ennemi<GAME_X_Player)
{
  GAME_x_ennemi+=3;
}
if (GAME_x_ennemi>GAME_X_Player)
{
  GAME_x_ennemi-=3;
}
}