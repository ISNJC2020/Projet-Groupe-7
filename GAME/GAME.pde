PImage imgOption_control_fleches;
PImage imgOption_control_ZQSD;
PImage imgPlayerL;
PImage imgPlayerR;


int Timer=0;

int x = 0;
int y = 0;
int Option_Hz = 70;            //fréquence de l'écran
float Option_FrameRate;
float Option_vitesse;
int MODE=1; // permet de derteminé quel écran doit être affiché (menu, jeux, option...)

int Option_EnterSettings=0;
String w=""; //variables de la définition de l'écran custom
String h="";
//GAME
int GAME_Direction_Player=1; //1=R 2=L
int GAME_X_Player=10;
float GAME_Y_Player=10;
int GAME_Vitesse_Player=100; //Entre 1 et 100
int GAME_Delay_Vitesse=100;
int GAME_Chrono_Vitesse=0;
int GAME_SAUT=0;
int GAME_T_SAUT=0;
int GAME_Key_Control=0;
int GAME_CoeffSaut=1;

int GAME_UP_hitbox=0;
int GAME_DOWN_hitbox=0;
int GAME_LEFT_hitbox=0;
int GAME_RIGHT_hitbox=0;

//Options
int Option_Control=2;        //Switch entre le control avec ZQSD (2) et les fleches (1)
int Option_SettingsSize=1;
int Option_W=0;
int Option_H=0;

String[] saveSettings;
String[] load;

//Autres
int PartieSaisie=1;
int keySave;


class objet {

  float D = random (0, 4);
  float r = random(0, 50);
  float g = random(25, 100);
  float b = random(100, 256);
  float profondeur = random(0.1, 1);
  float x = random(0, width-20*profondeur*height/1440);
  float y = random(0, height-20*profondeur*height/1440);

  void deplacement() {

    if (D<=1) {
      x=x+0.1*Option_vitesse*profondeur*height/1440;
      y=y+0.1*Option_vitesse*profondeur*height/1440;
      if (x>=width-20*profondeur*height/1440) {
        D=2;
        if (y>=height-20*profondeur*height/1440) {
          D=3;
        }
      }
      if (y>=height-20*profondeur*height/1440) {
        D=4;
      }
    } else {

      if (D<=2) {
        x=x-0.1*Option_vitesse*profondeur*height/1440;
        y=y+0.1*Option_vitesse*profondeur*height/1440;

        if (x<=0) {
          D=1;
          if (y>=height-20*profondeur*height/1440) {
            D=4;
          }
        }
        if (y>=height-20*profondeur*height/1440) {
          D=3;
        }
      } else {

        if (D<=3) {
          x=x-0.1*Option_vitesse*profondeur*height/1440;
          y=y-0.1*Option_vitesse*profondeur*height/1440;
          if (x<=0) {
            D=4;
            if (y<=0) {
              D=1;
            }
          }
          if (y<=0) {
            D=2;
          }
        } else {

          if (D<=4) {
            x=x+0.1*Option_vitesse*profondeur*height/1440;
            y=y-0.1*Option_vitesse*profondeur*height/1440;
            if (x>=width-20*profondeur*height/1440) {
              D=3; 
              if (y<=0) {
                D=2;
              }
            }
            if (y<=0) {
              D=1;
            }
          }
        }
      }
    }
  }


  void carre() {
    fill(r, g, b, 100);
    rect (x, y, 20*profondeur*height/1440, 20*profondeur*height/1440);
  }
}

objet[] objets = new objet[1000];



void Text() {   
  fill(#909090);
  //rect (width/30,height*5/10+17*height/1440,150*height/1440,-75*height/1440);       //boîte de clic "PLAY"
  //rect (width/30,height*6/10+17*height/1440,220*height/1440,-75*height/1440);       //boîte de clic "OPTION"
  //rect (width/30,height*7/10+17*height/1440,150*height/1440,-75*height/1440);       //boîte de clic "QUIT"

  fill(#FFFFD0);
  PFont maPolice = createFont("Times", 150*height/1440);
  textFont(maPolice, 150*height/1440);
  text("Shadow of the dead", width/2, height/5);
  textAlign(LEFT);
  textFont(maPolice, 75*height/1440);
  text("Play", width/30, height*5/10);
  text("Option", width/30, height*6/10);
  text("Quit", width/30, height*7/10);
}
void ClicText() {
  if (mouseX<width/30+150*height/1440) {
    if (mouseX>width/30) {
      if (mouseY<height*5/10+17*height/1440) {
        if (mouseY>height*5/10+17*height/1440-75*height/1440) {
          fill(#909090);
          text("Play", width/30, height*5/10);
          if (mousePressed && Timer >= 25)
          {
            Timer =0;
            MODE=2;
            println("Clic");
            delay(10);
          }
        }
      }
    }
  }
  if (mouseX<width/30+220*height/1440) {
    if (mouseX>width/30) {
      if (mouseY<height*6/10+17*height/1440) {
        if (mouseY>height*6/10+17*height/1440-75*height/1440) {
          fill(#909090);
          text("Option", width/30, height*6/10);
          if (mousePressed && Timer >= 25)
          {
            Timer =0;
            MODE=3;
            println("Clic");
            delay(10);
          }
        }
      }
    }
  }
  if (mouseX<width/30+150*height/1440) {
    if (mouseX>width/30) {
      if (mouseY<height*7/10+17*height/1440) {
        if (mouseY>height*7/10+17*height/1440-75*height/1440) {
          fill(#909090);
          text("Quit", width/30, height*7/10);
          if (mousePressed && Timer >= 25)
          {
            Timer =0;
            exit();
            println("Clic");
            delay(10);
          }
        }
      }
    }
  }
}


void settings()
{
  String lines[] = loadStrings("Settings.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) {
    Option_SettingsSize=int (lines[0]);
    if (i==1) {
      Option_W=int (lines[i]);
    }
    if (i==2) {
      Option_H=int (lines[i]);
    }
    println(lines[i]);
  }
  if (Option_SettingsSize==1) {
    fullScreen();
  }
  if (Option_SettingsSize==2) {
    size (Option_W, Option_H);
  }
}



void setup()
{
  imgOption_control_fleches = loadImage("Direction fleches.png");
  imgOption_control_ZQSD = loadImage("Direction ZQSD.png");
  imgOption_control_fleches.resize(130*height/750, 75*height/750);
  imgOption_control_ZQSD.resize(130*height/750, 75*height/750);

  imgPlayerL= loadImage("Player.png");
  imgPlayerR= loadImage("Player.png");
  imgPlayerL.resize(32*height/300, 64*height/300);
  imgPlayerR.resize(32*height/300, 64*height/300);


 
    imgPlayerR=createImage(imgPlayerL.width, imgPlayerL.height, ARGB);
    for (int i=0; i<imgPlayerR.pixels.length; i++)
    {
      imgPlayerR.pixels[i]=color(255, 255, 255);
    }

    for (int x=0; x<imgPlayerL.width; x++)
    {
      for (int y=0; y<imgPlayerL.height; y++)
      {
        imgPlayerR.pixels[y*imgPlayerL.width+x]=imgPlayerL.pixels[y*imgPlayerL.width+(imgPlayerL.width-x-1)];
      }
    }
  
  GAME_Y_Player=height*3/5;

  println("SettingsSize");
  println(Option_SettingsSize);
  println(Option_W);
  println(Option_H);



  Option_FrameRate=200/Option_Hz;
  Option_vitesse=Option_FrameRate*height/1080;



  background(#000000);

  for (int i = 0; i < objets.length; i++) {
    objets[i] = new objet();
  }
}

void draw()
{
  frameRate(Option_Hz);
  background(#000000);
  textAlign(CENTER);
  Timer = Timer+1;

  if (MODE==1) {
    for (int i = 0; i < objets.length; i++) {
      objets[i].deplacement();
      objets[i].carre();
     
    }


    Text();
    ClicText();
  }
  if (MODE==3) {
    Options();
  }
  if (MODE==2) {
    Jeu();
  }
}
