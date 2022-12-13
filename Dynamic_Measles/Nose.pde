float noseP1X, noseP1Y, noseP2X, noseP2Y, noseP3X, noseP3Y;
float noseRectX, noseRectY, noseRectWidth, noseRectHeight;
PImage nose;

void nose() {
  noFill();
  noStroke();
  rect(noseRectX, noseRectY, noseRectWidth, noseRectHeight);
  image(nose, noseRectX, noseRectY, noseRectWidth, noseRectHeight);
}
