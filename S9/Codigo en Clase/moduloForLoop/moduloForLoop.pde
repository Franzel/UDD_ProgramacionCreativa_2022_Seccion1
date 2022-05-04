float tam = 20;

void setup() {
  size(800, 800);
}

void draw() {

  for (int i=0; i<100; i++) {
    for (int j=0; j<100; j++) {
      if (i%2==0 && j%2==0) {
        fill(255, 0, 0);
        tam=30;
      } else {
        fill(255);
        tam=20;
      }
      circle(i*30, j*30, tam);
    }
  }
}
