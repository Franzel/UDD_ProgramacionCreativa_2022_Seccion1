void setup(){
  size(500,500);
}

void draw(){
  
  float distancia = dist(mouseX, mouseY, width/2, height/2);
  //float distMapeada = map(distancia, 0, 400, 0,255); //normal
  float distMapeada = map(distancia, 0, 400, 255,0); //invertida
  
  println(distancia);
  
  background(distMapeada, 0, 0);
  
}
