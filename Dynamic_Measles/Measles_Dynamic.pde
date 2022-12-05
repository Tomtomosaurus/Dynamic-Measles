float measleX, measleY, measleDiameter;
color measlesColour;
//
void measlesDynamic() {
  //
  //Population Code, must stay here
  measleDiameter = random(appHeight*1/100, appHeight*1/25);
  float measleRadius = measleDiameter * 1/2;
  measleX = random(faceSquareX+measleRadius, faceSquareX+faceSquareSize-measleRadius); //use smallerDimension
  measleY = random(appHeight*0+measleRadius, appHeight-measleRadius);
  //Night Mode
  measlesColour = ( nightMode==true ) ? color( 255, random(0, 55), 0 ) : color( 255, random(0, 55), random(130) ) ;
  //measlesColour = color( 255, random(0, 55), random(130) );
  //Pink: ( 255, 0, 130)
  //Dark red: ( 255, 55, 0)
  //
  noStroke();
  fill(measlesColour);
  ellipse( measleX, measleY, measleDiameter, measleDiameter );
  fill(255);
} //End measlesDynamic
//
//Emd Draw Measles Subprogram
