void Options() {
  background(#000000);
  
  textAlign(LEFT);
  fill(#151520);
  rect(height/20, height/20, width-height*1/10, height*18/20);

  fill(#A0A0A0);
  //rect (width*1/10,height*2/10+17*height/1440,350*height/1440,-75*height/1440);

  PFont maPolice = createFont("Times", 75*height/1440);
  PFont maPolice2 = createFont("Times", 40*height/1440);
  textFont(maPolice2, 40*height/1440);
  text("Restart the game to change the definition", width*1/10, height-15*height/1440);
  textFont(maPolice, 75*height/1440);


  if (Option_Control==1) {
    image(imgOption_control_fleches, width*1/10, height*5/10);
  } else {
    image(imgOption_control_ZQSD, width*1/10, height*5/10);
  }
  
  if (mouseX>width*1/10) {
    if (mouseX<width*1/10+130*height/750) {
      if (mouseY>height*5/10) {
        if (mouseY<height*5/10+75*height/750) {
          if (mousePressed && Timer >= 25){
            Timer =0;
            if (Option_Control==1){
              Option_Control=2;
            }
            else{
              Option_Control=1;
            }
            
          }
        }
      }
    }
  }








  if ((height/width)<=(7/10)) {
    //rect (width*5/10+350*height/1440,height*2/10+17*height/1440,450*height/1440,-75*height/1440); //"taille de l'écran"
    //rect (width*5/10,height*2/10+17*height/1440,300*height/1440,-75*height/1440); // "custom"
    //rect (width*3/10,height*2/10+17*height/1440,375*height/1440,-75*height/1440); //boite de clic "full screen"
    fill(#FFFFD0);
    text("Custom:", width*5/10, height*2/10);

    if (Option_EnterSettings==0) {
      if (Option_SettingsSize == 1) {
        text(width +" / "+ height+"p", width*5/10+350*height/1440, height*2/10);
      }
      if (Option_SettingsSize == 2) {
        text(Option_W +" / "+ Option_H+"p", width*5/10+350*height/1440, height*2/10);
      }
    }





    text("Full Screen", width*3/10, height*2/10);
    text("Save and quit", height*1/10, height*9/10);
    text("Quit", width*5/10, height*9/10);


    if (mouseX>width*3/10) {
      if (mouseX<width*3/10+375*height/1440) {
        if (mouseY<height*2/10+17*height/1440) {
          if (mouseY>height*2/10+17*height/1440-75*height/1440) {
            fill(#909090);
            text("Full Screen", width*3/10, height*2/10);
            if (mousePressed && Timer >= 25)
            {
              Option_SettingsSize=1;

              delay(10);
            }
          }
        }
      }
    }
    if (mouseX>width*5/10) {
      if (mouseX<width*5/10+300*height/1440) {
        if (mouseY<height*2/10+17*height/1440) {
          if (mouseY>height*2/10+17*height/1440-75*height/1440) {
            fill(#909090);
            text("Custom:", width*5/10, height*2/10);
            if (mousePressed && Timer >= 25)
            {

              Option_SettingsSize=2;

              delay(10);
            }
          }
        }
      }
    }
    if (mouseX>width*5/10+350*height/1440 || Option_EnterSettings==1) {
      if (mouseX<width*5/10+350*height/1440+450*height/1440 || Option_EnterSettings==1) {
        if (mouseY<height*2/10+17*height/1440 || Option_EnterSettings==1) {
          if (mouseY>height*2/10+17*height/1440-75*height/1440 || Option_EnterSettings==1) {
            fill(#909090);
            if (Option_EnterSettings==0) {

              if (Option_SettingsSize == 1) {
                text(width +" / "+ height+"p", width*5/10+350*height/1440, height*2/10);
              }
              if (Option_SettingsSize == 2) {
                text(Option_W +" / "+ Option_H+"p", width*5/10+350*height/1440, height*2/10);
              }
            }
            if ((mousePressed || Option_EnterSettings==1  )&& (Timer >= 25))
            {
              Option_EnterSettings=1;
              Option_SettingsSize=2;
              text(w+" / "+h, width*5/10+350*height/1440, height*2/10);

              delay(10);
            }
          }
        }
      }
    }

    if (mouseX>height*1/10) {
      if (mouseX<height*1/10+480*height/1440) {
        if (mouseY<height*9/10+17*height/1440) {
          if (mouseY>height*9/10+17*height/1440-75*height/1440) {
            //rect (height*1/10, height*9/10+17*height/1440, 480*height/1440, -75*height/1440);
            fill (#909090);
            text("Save and quit", height*1/10, height*9/10);
            if (mousePressed && Timer >= 25) 
            {
              Option_EnterSettings=0;
              PartieSaisie=1;
              Option_W = int(w);
              Option_H = int(h);
              if (Option_SettingsSize==2) {
                if ((Option_W>100 && Option_W<5000) || (Option_H>100 && Option_H<5000)) {

                  String SettingsSize = "2"+" "+w+" "+h;
                  String[] list = split(SettingsSize, ' ');
                  saveStrings ("Settings.txt", list);
                } else {
                  String Size = "1";
                  String[] list = split(Size, ' ');
                  saveStrings ("Settings.txt", list);
                }
              }
              if (Option_SettingsSize==1) {
                String Size = "1";
                String[] list = split(Size, ' ');
                saveStrings ("Settings.txt", list);
              }

              MODE=1;
            }
          }
        }
      }
    }

    if (mouseX>width*5/10) {
      if (mouseX<width*5/10+150*height/1440) {
        if (mouseY<height*9/10+17*height/1440) {
          if (mouseY>height*9/10+17*height/1440-75*height/1440) {
            fill (#909090);
            text("Quit", width*5/10, height*9/10);
            if (mousePressed && Timer >= 25)
            {
              Option_EnterSettings=0;
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
              MODE=1;
            }
          }
        }
      }
    }
  }







  if ((height/width)>(7/10)) {
    //rect (width*4/10+310*height/1440,height*2.7/10+17*height/1440,450*height/1440,-75*height/1440);
    //rect (width*4/10,height*2.7/10+17*height/1440,300*height/1440,-75*height/1440);
    //rect (width*5/10,height*2/10+17*height/1440,375*height/1440,-75*height/1440);
    fill(#FFFFD0);
    text("Custom:", width*4/10, height*2.7/10);
    text("Save and quit", height*1/10, height*9/10);
    text("Quit", width*5/10, height*9/10);

    if (Option_EnterSettings==0) {
      if (Option_SettingsSize == 1) {
        text(width +" / "+ height+"p", width*4/10+310*height/1440, height*2.7/10);
      }
      if (Option_SettingsSize == 2) {
        text(Option_W +" / "+ Option_H+"p", width*4/10+310*height/1440, height*2.7/10);
      }
    }

    text("Full Screen", width*5/10, height*2/10);


    if (mouseX>width*5/10) {
      if (mouseX<width*5/10+375*height/1440) {
        if (mouseY<height*2/10+17*height/1440) {
          if (mouseY>height*2/10+17*height/1440-75*height/1440) {
            fill(#909090);
            text("Full Screen", width*5/10, height*2/10);
            if (mousePressed && Timer >= 25)
            {
              Option_SettingsSize=1;
              delay(10);
            }
          }
        }
      }
    }
    if (mouseX>width*4/10) {
      if (mouseX<width*4/10+300*height/1440) {
        if (mouseY<height*2.7/10+17*height/1440) {
          if (mouseY>height*2.7/10+17*height/1440-75*height/1440) {
            fill(#909090);
            text("Custom:", width*4/10, height*2.7/10);
            if (mousePressed && Timer >= 25)
            {
              Option_SettingsSize=2;
              delay(10);
            }
          }
        }
      }
    }
    if (mouseX>width*4/10+350*height/1440 || Option_EnterSettings==1) {
      if (mouseX<width*4/10+350*height/1440+450*height/1440 || Option_EnterSettings==1) {
        if (mouseY<height*2.7/10+17*height/1440 || Option_EnterSettings==1) {
          if (mouseY>height*2.7/10+17*height/1440-75*height/1440 || Option_EnterSettings==1) {

            fill(#909090);
            if (Option_EnterSettings==0) {

              if (Option_SettingsSize == 1) {
                text(width +" / "+ height+"p", width*4/10+310*height/1440, height*2.7/10);
              }
              if (Option_SettingsSize == 2) {
                text(Option_W +" / "+ Option_H +"p", width*4/10+310*height/1440, height*2.7/10);
              }
            }



            if ((mousePressed || Option_EnterSettings==1) && (Timer >= 25))
            {
              Option_EnterSettings=1;
              Option_SettingsSize=2;
              text(w+" / "+h, width*4/10+310*height/1440, height*2.7/10);

              delay(10);
            }
          }
        }
      }
    }

    if (mouseX>height*1/10) {
      if (mouseX<height*1/10+480*height/1440) {
        if (mouseY<height*9/10+17*height/1440) {
          if (mouseY>height*9/10+17*height/1440-75*height/1440) {
            //rect (height*1/10, height*9/10+17*height/1440, 480*height/1440, -75*height/1440);
            fill (#909090);
            text("Save and quit", height*1/10, height*9/10);
            if (mousePressed && Timer >= 25) 
            {
              Option_EnterSettings=0;
              PartieSaisie=1;
              Option_W = int(w);
              Option_H = int(h);
              if (Option_SettingsSize==2) {
                if ((Option_W>100 && Option_W<5000) || (Option_H>100 && Option_H<5000)) {
                  String Size = "1";
                  String[] list = split(Size, ' ');
                  saveStrings ("Settings.txt", list);
                } else {
                  String SettingsSize = "2"+" "+w+" "+h;
                  String[] list = split(SettingsSize, ' ');
                  saveStrings ("Settings.txt", list);
                }
              }
              if (Option_SettingsSize==1) {
                String Size = "1";
                String[] list = split(Size, ' ');
                saveStrings ("Settings.txt", list);
              }
              MODE=1;
            }
          }
        }
      }
    }

    if (mouseX>width*5/10) {
      if (mouseX<width*5/10+150*height/1440) {
        if (mouseY<height*9/10+17*height/1440) {
          if (mouseY>height*9/10+17*height/1440-75*height/1440) {
            fill (#909090);
            text("Quit", width*5/10, height*9/10);
            if (mousePressed && Timer >= 25)
            {
              Option_EnterSettings=0;
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
              MODE=1;
            }
          }
        }
      }
    }
  }





  fill(#FFFFD0);


  textFont(maPolice, 75*height/1440);
  text("Definition :", width*1/10, height*2/10);
}
