float misNumeros [] [] = new float [30][30];

void setup() {
  size(500, 500);
  for (int i= 0; i<30; i++) {
    for (int j=0; j<30; j++) {
      misNumeros[i][j] = random(10, 30);
    }
  }
}

void draw() {
  background(0);

  for (int i= 0; i<30; i++) {
    for (int j=0; j<30; j++) {
      miFigura (30*i, 30*j, misNumeros[i][j]);
    }
  }
}

void miFigura(float x, float y, float t) {
  rect(x, y, t, t);
  ellipse(x, y, t/2, t/2);
}
