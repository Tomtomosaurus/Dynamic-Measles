Boolean pause=false, nightMode=false, releaseTheMeasles=false, reset=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float measlesButtonX, measlesButtonY, measlesButtonWidth, measlesButtonHeight;
float pauseButtonX, pauseButtonY, pauseButtonWidth, pauseButtonHeight;
float hoverOverWidth, hoverOverHeight;
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
  if (mouseX >= quitButtonX && mouseY >= quitButtonY && mouseX <= quitButtonX + quitButtonWidth && mouseY <= quitButtonY + quitButtonHeight) {
    quitButtonColour = color(255, 100, 100);
  } else {
    quitButtonColour = color(255, 0, 0);
  }
  if (mouseX >= measlesButtonX && mouseY >= measlesButtonY && mouseX <= measlesButtonX + measlesButtonWidth && mouseY <= measlesButtonY + measlesButtonHeight) {
    measlesButtonColour = color(100, 200, 100);
  } else {
    measlesButtonColour = color(0, 255, 0);
  }
  if (mouseX >= pauseButtonX && mouseY >= pauseButtonY && mouseX <= pauseButtonX + pauseButtonWidth && mouseY <= pauseButtonY + pauseButtonHeight) {
    pauseButtonColour=color(100, 100, 200);
  } else {
    pauseButtonColour=color(0, 0, 255);
  }
  if (nightMode) {
    tint(255, 0, 255);
  }
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
  mouth();
  eyes();
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
