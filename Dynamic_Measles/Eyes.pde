float leftEyeX, leftEyeY, leftEyeDiaX, leftEyeDiaY;
float rightEyeX, rightEyeY, rightEyeDiaX, rightEyeDiaY;
float leftEyeRectX, leftEyeRectY, leftEyeRectWidth, leftEyeRectHeight;
float rightEyeRectX, rightEyeRectY, rightEyeRectWidth, rightEyeRectHeight;
PImage eye, eye2;

void eyes() {
  image(eye, rightEyeRectX, rightEyeRectY, rightEyeRectWidth, rightEyeRectHeight);
  scale(-1, 1);
  image(eye2, -leftEyeRectX-leftEyeRectWidth, leftEyeRectY, leftEyeRectWidth, leftEyeRectHeight);
  scale(1, 1);
}
