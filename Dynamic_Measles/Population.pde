void population() {
  smallerDimension = (landscape==true) ? height: width;
  largerDimension = (landscape==true) ? width: height;
  appWidth = width;
  appHeight = height;
  quitButtonX = appHeight/16;
  quitButtonY = appHeight/4;
  quitButtonWidth = appWidth/4;
  quitButtonHeight = appHeight/8;
  measlesButtonX = quitButtonX;
  measlesButtonY = quitButtonY + appHeight*3/8;
  measlesButtonWidth = quitButtonWidth;
  measlesButtonHeight = quitButtonHeight;
  faceX = appWidth/32*5 + appWidth/2;
  faceY = appHeight/2;
  faceDia = appHeight*7/8;
}
