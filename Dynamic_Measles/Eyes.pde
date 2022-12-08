float leftEyeX, leftEyeY, leftEyeDiaX, leftEyeDiaY;
float rightEyeX, rightEyeY, rightEyeDiaX, rightEyeDiaY;
float leftEyeRectX, leftEyeRectY, leftEyeRectWidth, leftEyeRectHeight;
float rightEyeRectX, rightEyeRectY, rightEyeRectWidth, rightEyeRectHeight;
PImage eye, eye2;

void eyes() {
  image(eye, rightEyeRectX, rightEyeRectY, rightEyeRectWidth, rightEyeRectHeight);
  image(eye2, leftEyeRectX, leftEyeRectY, leftEyeRectWidth, leftEyeRectHeight);
}
