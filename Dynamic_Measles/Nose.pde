float noseP1X, noseP1Y, noseP2X, noseP2Y, noseP3X, noseP3Y;
float noseRectX, noseRectY, noseRectWidth, noseRectHeight;

void nose() {
  noFill();
  rect(noseRectX, noseRectY, noseRectWidth, noseRectHeight);
  fill(color(0, 0, 0));
  triangle(noseP1X, noseP1Y, noseP2X, noseP2Y, noseP3X, noseP3Y);
}
