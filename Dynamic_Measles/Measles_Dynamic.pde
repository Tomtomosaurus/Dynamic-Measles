float measleX, measleY, measleDia, measleRad;
color measlesColour;

void measlesDynamic() {
  //Population code for measles must stay here!!!!!
  measleRad = measleDia/2;
  measleX = random(faceSquareX+measleRad, faceSquareX+faceSquareSize-measleRad);
  measleY = random(faceSquareY+measleRad, faceSquareY+faceSquareSize-measleRad);
  measleDia = random(appHeight*1/10, appHeight*1/11);
  fill(measlesColour);
  circle(measleX, measleY, measleDia);
}
