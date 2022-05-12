int tam;
Modulo miFigura1;
Modulo miFigura2;

void setup(){
  size(500,500);
  tam = 10;
  miFigura1 = new Modulo(300, 256, 20, color(255,123,0,50), 6);
  miFigura2 = new Modulo(400, 350, 30, color(100,30,200,50), 10);
}

void draw(){
  background(255);
  miFigura1.dibuja();
  miFigura1.tirita(1);
  miFigura2.dibuja();
  miFigura2.tirita(5);
}
