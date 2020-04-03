void keyPressed() {

  if (Option_EnterSettings==1) {
    if (PartieSaisie==1) {
      if (key==BACKSPACE) {
        w="";
        h="";
      }
      if ((key==ENTER)||(key==RETURN)) {
        PartieSaisie=2;
      } else {
        if (keyPressed && (key != BACKSPACE)) {
          w=w+key;
        }
      }
    }

    if (PartieSaisie==2) {
      if (key==BACKSPACE) {
        w="";
        h="";
      }
      if ((key==ENTER)||(key==RETURN)) {
        if (h!="") {
          Option_W = int(w);
          Option_H = int(h);
          Option_EnterSettings=0;
          PartieSaisie=1;
          Option_SettingsSize=2;
          println (Option_W+" / "+Option_H);
        }
      } else {
        if (keyPressed && (key != BACKSPACE)) {
          h=h+key;
        }
      }
    }
  }
}
