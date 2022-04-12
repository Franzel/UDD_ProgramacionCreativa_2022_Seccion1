void setup() {
  size(500, 500);
}

void draw() {
  background(255, 0, 0);
  for (int i = 0; i<30 ;i++){
    pushMatrix();
    translate(20 * i, 100);
    rotate(radians(10*i));
    rect(0,0, 40, 40);
    popMatrix();
  }
}
