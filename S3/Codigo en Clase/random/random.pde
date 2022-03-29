void setup(){
  size(500,200);
}

void draw(){
  //background(0,255,0);
  println(random(width));
  fill(random(255),random(255),random(255)); 
  circle(random(width), random(height), random(10,60));
  
}
