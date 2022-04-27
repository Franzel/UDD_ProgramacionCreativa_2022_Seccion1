int dir = -1;
float rot = 0;

void setup(){
  size(500,500);
}

void draw(){
  background(0);
  rot += 1 * dir;
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot));
  rect(0,0,100,100); 
  popMatrix();
}

void mousePressed(){
 dir = dir * -1;
}
