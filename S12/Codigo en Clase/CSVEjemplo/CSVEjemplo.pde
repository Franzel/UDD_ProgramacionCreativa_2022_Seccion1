Table tabla; //paso 1
int dia;
float tMax, tMin;
float tempMaximas [];
float tempMinimas [];
int dias [];

void setup() {
  size(800, 600);
  tabla = loadTable("temperaturas.csv", "header");
  //println("filas: " + tabla.getRowCount());
  //println("columnas: " + tabla.getColumnCount());

  tempMaximas = new float [tabla.getRowCount()];
  tempMinimas = new float [tabla.getRowCount()];
  dias = new int [tabla.getRowCount()];

  for (int i = 0; i<tabla.getRowCount(); i++) {
    dias[i] = tabla.getInt(i, 0);
    tempMinimas[i] = tabla.getFloat(i, 1);
    tempMaximas[i] = tabla.getFloat(i, 2);
  }
}

void draw() {
  background(255);
  for (int i = 0; i<tabla.getRowCount(); i++) {
    float tMaxMap = map(tempMaximas[i], 0, 35, 0, -200);
    float tMinMap = map(tempMinimas[i], 0, 35, 0, -200);
    
    fill(255, 200, 0);
    rect(100 + 20*i, height/2, 10, tMaxMap);
    fill(0, 200, 255);
    rect(100 + 20*i, height/2, 10, tMinMap);
    
    fill(0);
    text(dias[i], 100 + 20*i, height/2 + 30);
  }
}
