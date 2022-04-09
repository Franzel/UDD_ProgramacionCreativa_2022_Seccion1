boolean huboClick = false;
color miColor = color(255);
void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  fill(miColor);
  if (huboClick == true) {
    circle(width/2, height/2, 100);
  }
}

void mousePressed() {
  //huboClick=true;
  huboClick = !huboClick;
}

void keyPressed() {

  if (key == 'a') {
    miColor = color(255, 0, 0);
  }

  if (key == 's') {
    miColor = color(255, 255, 0);
  }

  if (key == 'd') {
    miColor = color(0, 255, 255);
  }
}
