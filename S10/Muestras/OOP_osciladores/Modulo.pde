class Modulo {
  //variables de la clase
  float posX, posY;
  float tam;
  color col;

  //Constructor
  Modulo(float x, float y, float t, color c) {
    posX = x;
    posY = y;
    tam = t;
    col = color(c);
  }

  //Metodos. En este caso, solo tenemos 1 que dibuja
  void dibuja(float o) {
    fill(col);
    noStroke();
   
    pushMatrix();
    translate(posX, posY);
    rotate(radians(o) * sin(frameCount*0.01));
    //rotate(radians(o));
    rect(0, 0, tam, tam/5);
    popMatrix();
    
    //circle(pX, posY, tam);
  }
}
