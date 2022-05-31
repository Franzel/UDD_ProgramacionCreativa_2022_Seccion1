//Dia diaTest;
Table tabla;
Dia dias[];


void setup() {
  size(800, 600);
  //diaTest = new Dia(300, 300, 20, 100, 30,  24, color(255,0,0), color(0,0,255));
  tabla = loadTable("temperaturas2.csv", "header");
  dias = new Dia[ tabla.getRowCount() ] ;

  for (int i=0; i<tabla.getRowCount(); i++) {
    int dia = tabla.getInt(i, 0);
    float tMin = tabla.getFloat(i, 1);
    float tMax = tabla.getFloat(i, 2);
    String pais = tabla.getString(i,3);
    color cMax = color(255, 0, 0);
    color cMin = color(0, 100, 255);
    dias[i] = new Dia(100 + 20 * i, height/2, 15, tMax, tMin, dia, cMax, cMin, pais);
  }
}

void draw() {
  background(255);
  
  for (int i=0; i<dias.length; i++){
    dias[i].dibuja();
    dias[i].mouseHover();
  }
  
  //diaTest.dibuja();
  //diaTest.mouseHover();
}
