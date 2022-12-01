float faceX, faceY, faceDia;
float faceSquareX, faceSquareY, faceSquareSize;

void faceSetup () {
  noFill();
  square(faceSquareX, faceSquareY, faceSquareSize);
  fill(faceColour);
  circle(faceX, faceY, faceDia);
}
