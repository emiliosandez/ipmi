//INICIO DE PANTALLA
String comienzo;
PImage fondo;
PImage juego;
//movimientos
int tiempo;
int espera=2000;
float fin;
float imagenY;
float textoY;
boolean mover=false;
boolean reset=false;
boolean reseteo=false;
//clases
PImage artificiero;
PImage barbaro;
PImage bardo;
PImage brujo;
PImage cazadordesangre;
PImage clerigo;
PImage druida;
PImage guerrero;
PImage hechicero;
PImage mago;
PImage monje;
PImage paladin;
PImage picaro;
PImage explorador;

void setup() {
  size(640, 480);
  fondo = loadImage ("fondo.jpeg");
  juego = loadImage("dd.png");
  //Info
  comienzo = "Clases de Calabozos y Dragones ";
  //Logos de Clases
  artificiero = loadImage("artificiero.png");
  barbaro = loadImage("barbaro.png");
  bardo = loadImage("bardo.png");
  brujo = loadImage("brujo.png");
  cazadordesangre = loadImage("cazadordesangre.png");
  clerigo=loadImage("clerigo.png");
  druida=loadImage("druida.png");
  guerrero=loadImage("guerrero.png");
  hechicero=loadImage("hechicero.png");
  mago=loadImage("mago.png");
  monje=loadImage("monje.png");
  paladin=loadImage("paladin.png");
  picaro = loadImage("picaro.png");
  explorador = loadImage("explorador.png");

  imagenY=height/6+100;
  textoY=height/8+100;
  fin=height/8+100;
}
void draw() {

  println(mouseX, mouseY);
  //println(tiempo);
  //println(mover);
  tiempo+=1;
  //Pantalla inicial
  image(fondo, 0, 0);
  image(juego, 195, imagenY);
  fill(0);
  textSize(40);
  textAlign(CENTER);
  text(comienzo, width/2, textoY);

  if (tiempo/60>=2) {
    mover=true;
  }
  if (mover) {
    imagenY -= 1;
    textoY -= 1;
  }
  if (tiempo>610 && tiempo<690) {
    textAlign(CENTER);
    text("¿Que son las clases?", width/2, height/4);
  }
  if (tiempo>720 && tiempo<1050) {
    textAlign(LEFT);
    textLeading(50);
    textSize(32);
    text("Las clases es el aspecto que define", 64, 79);
    text("En mayor medida lo que tu personaje ", 64, 111);
    text("puede hacer no es su oficio...", 64, 140);
    textSize(40);
    text("Sino su Vocacion", 100, 250);
    text("Existen 14 clases jugables...", 100, 355);
  }
  //artificiero barbaro
  if (tiempo>1100 && tiempo<1300) {
    textSize(22);
    text("BARBARO", 130, 100);
    image(barbaro, 64, 135, 80, 80);
    textAlign(LEFT);
    text("Un feroz guerrero de origen primitivo", 140, 140);
    text("que puede dejarse llevar por la furia en combate", 140, 170);
    text("ARTIFICIERO", 470, 300);
    image(artificiero, 510, 331, 70, 70);
    text("Maestros de la invención,el ingenio y la magia", 64, 335);
    text("para dotar a los objetos de capacidades", 64, 355);
    text("extraordinarias", 64, 375);
  }
  //Bardo Brujo
  if (tiempo>1500 && tiempo<1700) {
    textSize(22);
    textAlign(LEFT);
    text("BARDO", 80, 100);
    image(bardo, 60, 110, 80, 80);
    text("Un taumaturgo inspirador cuyo poder", 140, 140);
    text("resuena con la musica", 140, 170);
    text("BRUJO", 490, 300);
    image(brujo, 485, 310, 70, 70);
    text("Un lanzador de conjuros que obtiene su poder", 64, 335);
    text("de un pacto con una entidad", 64, 355);
  }
  //cazador de sangre clerigo
  if (tiempo>1900 && tiempo<2100) {
    textSize(22);
    textAlign(LEFT);
    text("CAZADOR DE SANGRE", 80, 100);
    image(cazadordesangre, 60, 110, 80, 80);
    text("Son guerreros arcanos e inteligentes que", 140, 140);
    text("han ligado su esencia a las criaturas oscuras", 140, 160);
    text("que cazan para acechar y sobrevivir mejor", 140, 180);
    text("a sus presas", 140, 200);
    text("CLERIGO", 490, 300);
    image(clerigo, 485, 310);
    text("Un campeon religioso que empuña la magia", 64, 335);
    text("divina en servivio de un poder superior", 64, 355);
  }
  //druida guerrero
  if (tiempo>2300 && tiempo<2500) {
    textSize(22);
    textAlign(LEFT);
    text("DRUIDA", 80, 100);
    image(druida, 80, 110);
    text("Un sacerdote que adopta formas animales", 140, 140);
    text("poderes de la naturalezala,luz lunar", 140, 160);
    text("el fuego y el relampago", 140, 180);
    text("GUERRERO", 490, 300);
    image(guerrero, 485, 310);
    text("Un maestro del combate,experto", 64, 335);
    text("en una variedad de armas y armaduras", 64, 355);
  }
  //hechizero mago
  if (tiempo>2700 && tiempo<2900) {
    textSize(22);
    textAlign(LEFT);
    text("MAGO", 80, 100);
    image(mago, 80, 110);
    text("Un estudioso de la magia capaz de manipular", 140, 140);
    text("las estructuras de la realidad", 140, 160);
    text("HECHICERO", 480, 300);
    image(hechicero, 485, 310);
    text("Un lanzador de conjuros que emplea", 64, 335);
    text("una magia innata", 64, 355);
  }
  //monje paladin
  if (tiempo>3100 && tiempo<3300) {
    textSize(22);
    textAlign(LEFT);
    text("PALADIN", 80, 100);
    image(paladin, 80, 110, 80, 80);
    text("Un guerrero sagrado atado a un juramento", 166, 140);
    text("MONJE", 480, 300);
    image(monje, 485, 310);
    text("Un maestro de las artes marciales", 64, 335);
    text("que recurre al poder de su cuerpo", 64, 355);
    text("para alcanzar la perfeccion", 64, 375);
    text("fisica y espiritual", 64, 400);
  }
  if (tiempo>3500 && tiempo<3700) {
    textSize(22);
    textAlign(LEFT);
    text("PICARO", 80, 100);
    image(picaro, 80, 110, 80, 80);
    text("Un canalla que emplea", 166, 140);
    text("el sigilo y los engaños", 166, 160);
    text("para superar", 166, 180);
    text("obstaculos y enemigos", 166, 200);
    text("EXPLORADOR", 450, 300);
    image(explorador, 485, 310);
    text("Un combatiente que recurre", 64, 335);
    text("a la habilidad marcial y magia", 64, 355);
    text("de la naturaleza para enfrentarse", 64, 375);
    text("a amenazas en los limites de la civilizacion", 64, 395);
  }
  if (tiempo>3900) {
    textSize(80);
    textAlign(CENTER);
    text("FIN", 195, fin);
    fill(186,0,0);
    noStroke();
    rect(160,400,300,50);
  }
}
void mouseClicked() {
 if(mouseX>160 && mouseX<160+300 && mouseY>400 && mouseY<400+50 && tiempo>3900){
  tiempo = 0;
  textoY=150;
  imagenY=150;

  tiempo+=1;
}
}
