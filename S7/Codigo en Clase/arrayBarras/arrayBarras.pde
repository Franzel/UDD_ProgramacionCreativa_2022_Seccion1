float temperaturas [] = new float [30];//paso 1
color misColores [] = new color [30]; //paso 1

void setup() {
  size(500, 500);

  for (int i=0; i<temperaturas.length; i++) {
    temperaturas[i] = random(5, 200); //paso 2
    misColores[i] = color(random(255), random(255), random(255)); //paso2
  }
  println(temperaturas);
}

void draw() {
  for (int i=0; i<temperaturas.length; i++) {
    fill(misColores[i]);
    rect(100, 30*i, temperaturas[i], 20); //paso 3
  }
}
