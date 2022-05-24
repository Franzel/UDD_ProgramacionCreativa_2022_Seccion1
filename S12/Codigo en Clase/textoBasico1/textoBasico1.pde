void setup(){
  size(800,600);
}

void draw(){
  background(0);
  fill(0,255,255);
  textSize(50);
  textAlign(CENTER);
  text("mi texto", mouseX, mouseY);
  
  
  textAlign(RIGHT);
  fill(255,0,0);
  text("mi texto a la derecha", mouseX, mouseY + 50);
  
  textAlign(LEFT);
  fill(255,255,0);
  text("mi texto a la izquierda", mouseX, mouseY + 50);
}
