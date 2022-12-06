Boolean pause=false, nightMode=false, releaseTheMeasles=false, reset=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float measlesButtonX, measlesButtonY, measlesButtonWidth, measlesButtonHeight;
float pauseButtonX, pauseButtonY, pauseButtonWidth, pauseButtonHeight;
int appWidth, appHeight;
color quitButtonColour, measlesButtonColour, pauseButtonColour, faceColour = color(234, 194, 140);
int smallerDimension, largerDimension;

void setup() {
  frameRate(144);
  //fullScreen();
  size(1200, 900);
  population();
  background(0);
  faceSetup();
}
void draw() {
  noStroke();
  fill(quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(measlesButtonColour);
  rect(measlesButtonX, measlesButtonY, measlesButtonWidth, measlesButtonHeight);
  fill(pauseButtonColour);
  rect(pauseButtonX, pauseButtonY, pauseButtonWidth, pauseButtonHeight);
  if (releaseTheMeasles && pause==false) {
    measlesDynamic();
  }
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
  if (mouseX >= pauseButtonX && mouseY >= pauseButtonY && mouseX <= pauseButtonX + pauseButtonWidth && mouseY <= pauseButtonY + pauseButtonHeight) {
    if (nightMode) {
      pauseButtonColour=color(200, 200, 100);
    } else {
      pauseButtonColour=color(100, 100, 200);
    }
  } else {
    if (nightMode) {
      pauseButtonColour=color(255, 255, 0);
    } else {
      pauseButtonColour=color(0, 0, 255);
    }
  }
}
void mousePressed() {
  if (mouseX >= quitButtonX && mouseY >= quitButtonY && mouseX <= quitButtonX + quitButtonWidth && mouseY <= quitButtonY + quitButtonHeight) exit();
  if (mouseX >= measlesButtonX && mouseY >= measlesButtonY && mouseX <= measlesButtonX + measlesButtonWidth && mouseY <= measlesButtonY + measlesButtonHeight) releaseTheMeasles=true;
  if (pause==false) {
    if (mouseX >= pauseButtonX && mouseY >= pauseButtonY && mouseX <= pauseButtonX + pauseButtonWidth && mouseY <= pauseButtonY + pauseButtonHeight) pause=true;
  } else {
    if (mouseX >= pauseButtonX && mouseY >= pauseButtonY && mouseX <= pauseButtonX + pauseButtonWidth && mouseY <= pauseButtonY + pauseButtonHeight) pause=false;
  }
}
void keyPressed() {
  if (nightMode==false) {
    if (key=='n' || key=='N') nightMode=true;
  } else {
    nightMode=false;
  }
  if (key=='r' || key=='R') {
    faceSetup();
    if (releaseTheMeasles && pause==false)
      measlesDynamic();
  }
}
