PFont fuente;
String miTexto;

void setup() {
  size(800, 600);

  fuente = createFont("arial.ttf", 40);
  miTexto = "cualquier cosa";
}

void draw() {
  background(0);
  textFont(fuente, 40);
  
  String frames = str(second());
  text(miTexto, 100, 100);
  text(frames, 100, 200);
  rect(100,100,textWidth(miTexto),20);
}
