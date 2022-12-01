Boolean sick = false, nightMode=false, releaseTheMeasles=false;
int quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int measlesButtonX, measlesButtonY, measlesButtonWidth, measlesButtonHeight;
int appWidth, appHeight;
color quitButtonColour, measlesButtonColour, faceColour = color(234, 194, 140);
int smallerDimension, largerDimension;

void setup() {
  //fullScreen();
  size(1200, 900);
  population();
}
void draw() {
  noStroke();
  fill(quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(measlesButtonColour);
  rect(measlesButtonX, measlesButtonY, measlesButtonWidth, measlesButtonHeight);
  faceSetup();
  measlesDynamic();
  nose();
  eyes();
  mouth();

  if (mouseX >= quitButtonX && mouseY >= quitButtonY && mouseX <= quitButtonX + quitButtonWidth && mouseY <= quitButtonY + quitButtonHeight) {
    if (nightMode==false) {
      quitButtonColour = color(255, 100, 100);
    } else {
      quitButtonColour = color(150, 50, 50);
    }
  } else {
    if (nightMode==false) {
      quitButtonColour = color(255, 0, 0);
    } else {
      quitButtonColour = color(150, 0, 0);
    }
  }
  if (mouseX >= measlesButtonX && mouseY >= measlesButtonY && mouseX <= measlesButtonX + measlesButtonWidth && mouseY <= measlesButtonY + measlesButtonHeight) {
    if (nightMode==false) {
      measlesButtonColour = color(100, 200, 100);
    } else {
      measlesButtonColour = color(50, 125, 50);
    }
  } else {
    if (nightMode==false) {
      measlesButtonColour = color(0, 255, 0);
    } else {
      measlesButtonColour = color(0, 150, 0);
    }
  }
  if (nightMode==true) {
    //measlesColour=color(200, 0, 0);
    measlesColour=color(random(150, 250), 0, 0);
  } else {
    //measlesColour=color(255, 0, 100);
    measlesColour=color(random(100, 255), 0, random(0, 100));
  }
}
void mousePressed() {
  if (mouseX >= quitButtonX && mouseY >= quitButtonY && mouseX <= quitButtonX + quitButtonWidth && mouseY <= quitButtonY + quitButtonHeight) exit();
}
void keyPressed() {
  if (nightMode==false) {
    if (key=='n' || key=='N') nightMode=true;
  } else {
    nightMode=false;
  }
  if (mouseX >= measlesButtonX && mouseY >= measlesButtonY && mouseX <= measlesButtonX + measlesButtonWidth && mouseY <= measlesButtonY + measlesButtonHeight) {
    releaseTheMeasles=true;
  }
}
