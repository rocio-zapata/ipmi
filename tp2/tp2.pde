PFont avengers5 ;

PImage avengers1, avengers2, avengers3;

int pantalla, tiempo, suma;

boolean ultimaPantalla;
color colorDelBoton;

float EfectoAumento;
int EfectoMovimiento;
float EfectoTransparencia;

void setup() {
  size(640, 480);

  avengers1 = loadImage("avengers1.jpg");
  avengers2 = loadImage("avengers2.jpg");
  avengers3 = loadImage("avengers3.jpg");

  avengers5 = loadFont("avengers5.vlw");
 // hxh2 = loadFont("hxh2.vlw");
 // hxh3 = loadFont("hxh3.vlw");
  textSize(30);

  pantalla = 0;
  tiempo = 0;
  suma = 4;
  ultimaPantalla = false;
  colorDelBoton = color(120, 120, 120);

  EfectoAumento = 38;
  EfectoMovimiento = 530;
  EfectoTransparencia = 1;
}

void draw() {
  if (pantalla == 0) {
    push();
    image(avengers1, 0, 0, 640, 480);
    textFont(avengers5, EfectoAumento);

    fill(0,255,0);
    text(" HUNTER X HUNTER\n La trama del manga nos \n sitúa en un mundo fantástico \n en el que existen bestias maléficas,\n tesoros ocultos…\n  y hunters o «cazadores»,", 0, height/2);
    EfectoAumento = EfectoAumento - 0.1;
    pop();
  } else if (pantalla == 1) {
    push();
    image(avengers2, 0, 0, 640, 480);
    textFont(avengers5, 30);

    fill(0,255,0);
    text("Gon Freecss es un muchacho \n que se presenta a los\n exámenes de hunter  con el fin \n de obtener la tarjeta de licencia \n En las pruebas hace amistad \n con otros tres aspirantes.", EfectoMovimiento, height/2);
    EfectoMovimiento = EfectoMovimiento - 3;
    pop();
  } else if (pantalla == 2) {
    image(avengers3, 0, 0, 640, 480);
    fill(0,255,0, EfectoTransparencia);
    textFont(avengers5, 30);

    text("Desde ese momento \n se hacen inseparables \n y empiezan a \nvérselas tanto\n con bestias maléficas \n como con humanos\n malvados.", width/2, 0);
    EfectoTransparencia = EfectoTransparencia + 3.5;
    if (ultimaPantalla == true) {
      push();
      fill(colorDelBoton);
      rect(530, 420, 100, 40);
      textSize(22);
      fill(0);
      text("REINICIAR", 530, 450);
      pop();
    }
  }
if (ultimaPantalla == false) {
    tiempo = tiempo  + suma;
  }

  if (tiempo >= 900 && pantalla != 3) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    } else if (pantalla == 2) {
      ultimaPantalla = true;
    }
  }
  println(frameCount, tiempo);
}

void mouseClicked() {
  if (ultimaPantalla == true) {

    if (mouseX > 530 && mouseX < 628 && mouseY > 420 && mouseY < 460) {
      pantalla = 0;
      tiempo = 0;
      suma = 5;
      EfectoAumento = 38;
      EfectoMovimiento = 530;
      EfectoTransparencia = 1;
      ultimaPantalla = false;
    }
  }
}

void mouseMoved() {
  if (ultimaPantalla == true) {
    if (mouseX > 530 && mouseX < 628 && mouseY > 420 && mouseY < 460) {
      colorDelBoton = color(0, 255, 0);
    } else {
      colorDelBoton = color(120, 120, 120);
    }
  }
}
