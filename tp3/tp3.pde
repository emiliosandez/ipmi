//https://youtu.be/SQ3Pfjer7l8
int cambiodecolor;
int cambiodecolor2;
PImage refe ;
boolean efectoActivo = true;
void setup() {
  noStroke();
  size(800, 400);
  refe=loadImage("refe.jpg");
  rectMode(CENTER);
}

void draw() {
  println(mouseX, mouseY);
  background(255);
  image(refe, 30, 30, 350, 350);
  if (efectoActivo) {
    cambiodecolor = mouseX;
    cambiodecolor2 = mouseY;
  }
  // Centro de cada figura
  cuadrados(0, 0, 1);
  cuadrados(0, 200, 2);
  cuadrados(200, 0, 3);
  cuadrados(200, 200, 4);
}
//Funcion propia
void cuadrados(int lugarx, int lugary, int posicion) {
  int cx = 15;
  int cy = 15;

  // Calcula distancia entre el cursor y cx cy
  int distancia = int(dist(mouseX, mouseY, cx, cy));
  //transforma esa distancia en un valor entre -18 a 0
  int offset = int(map(distancia, 0, width, -18, 0));
  //repite 10 veces
  for (int i = 0; i < 10; i++) {
    int tamaño = (10 - i) * 20;
    int movimientox = 0;
    int movimientoy = 0;

    if (efectoActivo) {
      movimientox = i * offset;
      movimientoy = i * offset;
    }
    //movimiento de cuadrados
    if (posicion == 1) {
      if (efectoActivo) {
        movimientox = i * offset;
        movimientoy = i * offset;
      }
    } else if (posicion == 2) {
      if (efectoActivo) {
        movimientox = i * offset * -1;
        movimientoy = i * offset * -1;
      }
    } else if (posicion == 3) {
 if (efectoActivo) {
      movimientox = i * offset * -1;
      movimientoy = i * offset;
 } } else if (posicion == 4) {
      if (efectoActivo) {
        movimientox = i * offset;
        movimientoy = i * offset* -1;
      }
    }
    //cambio de color
    if (i % 2 == 0) fill(0);
    else fill(cambiodecolor2 % 255, cambiodecolor % 255, (cambiodecolor2 + cambiodecolor) % 255, random(255));
    //limita el area del efecto
    rect(500 + movimientox+lugarx, 100+movimientoy+lugary, tamaño, tamaño);
  }
}
void mousePressed() {
  efectoActivo = !efectoActivo;
}

void resetear() {
 
  cambiodecolor = 0;
  cambiodecolor2 = 0;
}
