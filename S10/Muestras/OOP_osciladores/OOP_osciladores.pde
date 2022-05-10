int nObjetos = 5500;
Modulo modulos[] = new Modulo [nObjetos];

void setup() {
  size(512, 512);
  for (int i = 0; i < modulos.length; ++i) {
    color miColor = color(255, 0, random(255), 30);
    float miX = random(-100, width + 100);
    float miY = random(-100, height + 100);
    float miTam = random(60);

    modulos[i] = new Modulo(miX, miY, miTam, miColor);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < modulos.length; ++i) {
    float d = dist(modulos[i].posX, modulos[i].posY, mouseX, mouseY);
    //float d = dist(modulos[i].posX, modulos[i].posY, 0,0);
    float dMap = map(d, 0, sqrt(sq(width) + sq(height)), 0,360); 
    modulos[i].dibuja(dMap);
  }
}
