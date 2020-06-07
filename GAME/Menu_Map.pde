void MenuMap() {

  textAlign(LEFT, TOP);

  background(#000000);
  fill(#151520);
  rect(height/20, height/20, width-height*1/10, height*18/20);

  PFont maPolice = createFont("Times", 75*height/1440);
  textFont(maPolice, 75*height/1440);
  fill(#AAAAAA);

  text ("NIVEAU 1", width*1.5/10, height*1.5/10);
  text ("NIVEAU 2", width*1.5/10, height*3/10);
  text ("NIVEAU 3", width*1.5/10, height*4.5/10);
  text ("NIVEAU 4", width*1.5/10, height*6/10);



  fill(#FFFFFF);
  if (mouseX>width*1.5/10) {
    if (mouseX<width*1.5/10+ 400*height/1440) {
      if (mouseY>height*1.5/10) {
        if (mouseY<height*1.5/10+ 75*height/1440) {

          text ("NIVEAU 1", width*1.5/10, height*1.5/10);

          if (mousePressed && Timer >= 30)
          {

            MAP = 1;
          }
        }
      }
    }
  }

  if (DeblMapTWO == 1) {
    if (mouseX>width*1.5/10) {
      if (mouseX<width*1.5/10+ 400*height/1440) {
        if (mouseY>height*3/10) {
          if (mouseY<height*3/10+ 75*height/1440) {

            text ("NIVEAU 2", width*1.5/10, height*3/10);
            if (mousePressed && Timer >= 30)
            {

              MAP = 2;
            }
          }
        }
      }
    }
  }

  if (DeblMapThree == 1) {
    if (mouseX>width*1.5/10) {
      if (mouseX<width*1.5/10+ 400*height/1440) {
        if (mouseY>height*4.5/10) {
          if (mouseY<height*4.5/10+ 75*height/1440) {

            text ("NIVEAU 3", width*1.5/10, height*4.5/10);
            if (mousePressed && Timer >= 30)
            {

              MAP = 3;
            }
          }
        }
      }
    }
  }

  if (DeblMapFour == 1) {
    if (mouseX>width*1.5/10) {
      if (mouseX<width*1.5/10+ 400*height/1440) {
        if (mouseY>height*6/10) {
          if (mouseY<height*6/10+ 75*height/1440) {

            text ("NIVEAU 4", width*1.5/10, height*6/10);
            if (mousePressed && Timer >= 30)
            {

              MAP = 4;
            }
          }
        }
      }
    }
  }
}
