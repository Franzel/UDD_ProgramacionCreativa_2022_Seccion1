

void setup() {
  size(500, 500);
}

void draw() {
  background(255, 0, 0);
  pushMatrix();
  translate(200, 200);
  rotate(radians(10));
  rect(0, 0, 50, 50);
  popMatrix();
}
