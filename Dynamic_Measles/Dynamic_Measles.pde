Boolean sick = false, nightMode=false;
int quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int measlesButtonX, measlesButtonY, measlesButtonWidth, measlesButtonHeight;
int faceX, faceY, faceDia;
int appWidth, appHeight;
color quitButtonColour, measlesButtonColour;
int smallerDimension, largerDimension;

void setup() {
  //fullScreen();
  size(1200, 900);
  population();
}
void draw() {
  fill(quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(measlesButtonColour);
  rect(measlesButtonX, measlesButtonY, measlesButtonWidth, measlesButtonHeight);
  faceSetup();
  //noFill();

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
}
void mousePressed() {
}
void keyPressed() {
  if (nightMode==false) {
    if (key=='n' || key=='N') nightMode=true;
  } else {
  }
}
