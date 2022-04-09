void setup(){
  size(500,500);
}

void draw(){
  background(255);
  miFuncion(0,0, 30);
  miFuncion(34,25, 100);
  miFuncion(200,400, 20);
  miFuncion(width/2, height/2, 83);
}

void miFuncion(float x, float y, float t){
  rect(x,y,t,t);
  line(x,y,x+t,y+t);
  line(x,y+t, x+t, y);
}
