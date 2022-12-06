float measleX, measleY, measleDia;
color measlesColour;
//
void measlesDynamic() {
  //
  //Population Code, must stay here

  measleDia = random(appHeight*1/100, appHeight*1/25);
  float measleRad = measleDia * 1/2;
  measleX = random(faceSquareX+measleRad, faceSquareX+faceSquareSize-measleRad); //use smallerDimension
  measleY = random(appHeight*0+measleRad, appHeight-measleRad);
  //Night Mode
  measlesColour = ( nightMode==true ) ? color( 255, random(0, 55), 0 ) : color( 255, random(0, 55), random(130) ) ;
  //measlesColour = color( 255, random(0, 55), random(130) );
  //Pink: ( 255, 0, 130)
  //Dark red: ( 255, 55, 0)
  //
  noStroke();
  if (dist(measleX, measleY, faceX, faceY) <=faceDia/2) {
    fill(measlesColour);
  } else {
    fill(0);
  }
  if (dist(measleX, measleY, faceX, faceY)>faceDia/2 && measleX > faceX && measleY > faceY) {
    ellipse(measleX+measleRad, measleY+measleRad, measleDia, measleDia);
  }
  if (dist(measleX, measleY, faceX, faceY)>faceDia/2 && measleX > faceX && measleY < faceY) {
    ellipse(measleX+measleRad, measleY-measleRad, measleDia, measleDia);
  }
  if (dist(measleX, measleY, faceX, faceY)>faceDia/2 && measleX < faceX && measleY > faceY) {
    ellipse(measleX-measleRad, measleY+measleRad, measleDia, measleDia);
  }
  if (dist(measleX, measleY, faceX, faceY)>faceDia/2 && measleX < faceX && measleY < faceY) {
    ellipse(measleX-measleRad, measleY-measleRad, measleDia, measleDia);
  }
  if (dist(measleX, measleY, faceX, faceY)<faceDia/2 && measleX > faceX && measleY > faceY) {
    ellipse(measleX-measleRad, measleY-measleRad, measleDia, measleDia);
  }
  if (dist(measleX, measleY, faceX, faceY)<faceDia/2 && measleX > faceX && measleY < faceY) {
    ellipse(measleX-measleRad, measleY+measleRad, measleDia, measleDia);
  }
  if (dist(measleX, measleY, faceX, faceY)<faceDia/2 && measleX < faceX && measleY > faceY) {
    ellipse(measleX+measleRad, measleY-measleRad, measleDia, measleDia);
  }
  if (dist(measleX, measleY, faceX, faceY)<faceDia/2 && measleX < faceX && measleY < faceY) {
    ellipse(measleX+measleRad, measleY+measleRad, measleDia, measleDia);
  }
  fill(255);
} //End measlesDynamic
//
//Emd Draw Measles Subprogram
