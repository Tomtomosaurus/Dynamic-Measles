float leftEyeX, leftEyeY, leftEyeDiaX, leftEyeDiaY;
float rightEyeX, rightEyeY, rightEyeDia;
float leftEyeRectX, leftEyeRectY, leftEyeRectWidth, leftEyeRectHeight;
float rightEyeSquareX, rightEyeSquareY, rightEyeSquareWidth;

void eyes() {
  noFill();
  square(rightEyeSquareX, rightEyeSquareY, rightEyeSquareWidth);
  rect(leftEyeRectX, leftEyeRectY, leftEyeRectWidth, leftEyeRectHeight);
  fill(0);
  ellipse(leftEyeX, leftEyeY, leftEyeDiaX, leftEyeDiaY);
  circle(rightEyeX, rightEyeY, rightEyeDia);
}
