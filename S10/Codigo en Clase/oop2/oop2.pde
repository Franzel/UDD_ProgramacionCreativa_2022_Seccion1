int tam;
Modulo misFiguras[];

void setup(){
  size(500,500);
  tam = 10;
  misFiguras = new Modulo [100];
  
  for(int i=0; i<misFiguras.length; i++){
    misFiguras[i] = new Modulo(random(width), random(height), random(5,40), color(random(255),123,0,50), int(random(1,6)));
  }
}

void draw(){
  background(255);
  //miFigura1.dibuja();
  //miFigura1.tirita(1);
  for(int i=0; i<misFiguras.length; i++){
    misFiguras[i].dibuja();
    misFiguras[i].tirita(5);
  }
}
