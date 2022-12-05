float leftEyeX, leftEyeY, leftEyeDiaX, leftEyeDiaY;
float rightEyeX, rightEyeY, rightEyeDiaX, rightEyeDiaY;
float leftEyeRectX, leftEyeRectY, leftEyeRectWidth, leftEyeRectHeight;
float rightEyeRectX, rightEyeRectY, rightEyeRectWidth, rightEyeRectHeight;

void eyes() {
  noFill();
  rect(rightEyeRectX, rightEyeRectY, rightEyeRectWidth, rightEyeRectHeight);
  rect(leftEyeRectX, leftEyeRectY, leftEyeRectWidth, leftEyeRectHeight);
  fill(255);
  ellipse(leftEyeX, leftEyeY, leftEyeDiaX, leftEyeDiaY);
  ellipse(rightEyeX, rightEyeY, rightEyeDiaX, rightEyeDiaY);
  fill(0);
  circle(leftEyeX, leftEyeY, leftEyeDiaY);
  circle(rightEyeX, rightEyeY, rightEyeDiaY);
} 
