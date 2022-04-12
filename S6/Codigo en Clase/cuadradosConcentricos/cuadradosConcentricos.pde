void setup(){
  size(500,500);
}

void draw(){
  background(0);
  for(int i=0;i<36;i++){
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(10*i));
    rect(100,0,50,10);
    popMatrix();
  }
}
