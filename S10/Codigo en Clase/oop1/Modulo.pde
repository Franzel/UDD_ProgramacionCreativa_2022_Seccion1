class Modulo {
  //variables de la clase
  float posX;
  float posY;
  float tam;
  color col;
  int nAnillos;

  //Constructor
  Modulo(float x, float y, float t, color c, int n) {
    posX = x;
    posY = y;
    tam = t;
    col = c;
    nAnillos = n;
  }

  //Metodos
  void dibuja() {
    fill(col);
    for (int i =0; i<nAnillos; i++) {
      circle(posX, posY, tam * i);
    }
  }

  void tirita(float cant) {
    posX += random(-cant, cant);
    posY += random(-cant, cant);
  }
}
