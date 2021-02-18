int w = 300;
void setup() {
  size(600,600);
  noFill();
}
 
void draw() {
  background(0);
  drawCircle(300,300,w);
}
void keyPressed()  {
 if (key == '+') {
    w += 10;
  }
   if (key == '-') {
    w -= 10;
  }
}
void drawCircle(float x, float y, float radius) {
  fill(0);
  stroke(255);
  ellipse(x, y, radius, radius);
  if(radius > 8) {
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
  }
}
