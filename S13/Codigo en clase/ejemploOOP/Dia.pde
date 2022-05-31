class Dia {
  float posX, posY;
  float tamX, tamY, tamY2;
  int dia;
  boolean hover;
  color colorMax, colorMin;
  String pais;

  Dia (float x, float y, float tX, float tY, float tY2, int d, color cMax, color cMin, String p) {
    posX = x;
    posY = y;
    tamX = tX;
    tamY = map(tY, 0, 32, 0, 100);
    tamY2 = map(tY2, 0, 32, 0, 100);
    dia = d;
    colorMax = cMax;
    colorMin = cMin;
    hover = false;
    pais = p;
  }

  void dibuja() {
    textAlign(CENTER);
    
    if (hover == true) { //if(hover){
      fill(0);
    } else {
      fill(colorMax);
    }
    rect(posX, posY, tamX, -tamY);

    if (hover == true) { //if(hover){
      fill(0);
    } else {
      fill(colorMin);
    }
    rect(posX, posY, tamX, -tamY2);
    
    fill(0);
    text(dia, posX + tamX/2, posY + 20);
    
    text(pais, posX, posY + 100);
  }

  void mouseHover() {
    if (mouseX > posX && mouseX < posX+tamX && mouseY < posY && mouseY > posY-tamY) {
      hover = true;
    } else {
      hover = false;
    }
  }
}
