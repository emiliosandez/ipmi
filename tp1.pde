PImage play ;
PImage logops2 ;
void setup(){
background(255);
play=loadImage("play.jpg");
logops2=loadImage("logops2.png");  

size(800,400);
}
void draw(){
background(0,55,155);
println(mouseX,mouseY);
image(play,0,0,400,400);
fill(0);
//superficie
rect(400,232,400,45);
fill(120);
//rectangulo memory card
rect(408,136,370,50);
//rectangulo base
//noStroke();
rect(408,182,330,50);
//boton star
rect(727,155,40,10);
fill(0);
circle(763,160,3);
//boton para abrir cd
rect(550,150,40,10);
//ranura memory card
rect(480,141,55,30,5);
rect(417,141,55,30,5);
//rectangulo de la base
rect(710,197,15,25);
//cuadriculas fila 1 
rect(615,198,25,5);
rect(615+30,198,25,5);
rect(645+30,198,25,5);
//cuadriculas fila 2
rect(615,209,25,5);
rect(615+30,209,25,5);
rect(645+30,209,25,5);
//cuadriculas fila 3
rect(615,220,25,5);
rect(615+30,220,25,5);
rect(645+30,220,25,5);
//ranura USB
rect(551,202,20,20);
rect(551+30,202,20,20);
//Ranura joystick
rect(480,195,55,30);
rect(417,195,55,30);
image(logops2,645,143,25,25);






























}
