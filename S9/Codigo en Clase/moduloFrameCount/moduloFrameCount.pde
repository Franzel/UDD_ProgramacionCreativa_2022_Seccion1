float tam = 20;
color miColor;
void setup() {
  size(800, 800);
}

void draw() {
  background(miColor);
  println(frameCount);
  
  if (frameCount%60==0) {
    fill(255, 0, 0);
    tam=100;
    cambiaColor();
  } else {
    fill(255);
    tam=20;
  }
  
//ellipse(frameCount, height/2, tam, tam);
  ellipse(width/2, height/2, tam, tam);
  
  
}

void cambiaColor(){
  miColor = color(random(255),random(255),random(255)); 
}
