void setup(){
  size(500,500);
}

void draw(){
  background(255);
  for (int i=0; i<100; i++){
    //fill(20*i, 0 , 0);
    //rect(i*50, 0, 30, 30);
    //circle(width/2, height/2, i*10);
    miFuncion(mouseX + mouseX*i, mouseY, 10);
  }
}

void miFuncion(float x, float y, float t){
  rect(x,y,t,t);
  line(x,y,x+t,y+t);
  line(x,y+t, x+t, y);
}
