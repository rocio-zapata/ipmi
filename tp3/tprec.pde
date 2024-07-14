//rocio zapata 94748/5 Com1
// https://youtu.be/mhBjJi4k634

PImage  grilla1;
int correccion=0;
float max_distance;
float rect=30;

void setup() {
  size (800, 400);
  mouseX = (600);
  mouseY = (200);   
  grilla1 = loadImage ("grilla1.jpg");
  noStroke();
  max_distance = dist (0,0,width,height/2);
}

void draw() {
  background (255);
  image (grilla1, 0, 0, 400, 400);
  
  grilla(400, 0, 15, 40) ;
  grilla(450, 50, 20, 15 ) ;
  grilla (450, mouseY-150, 20, 15 );
  
  for (int i = 400; i <= width; i += 60) {
    for (int j = 0; j <= height; j += 60) {
     float size = dist(mouseX, mouseY, i, j);
     size = map(size, 0, max_distance, 10, 66); // Usa map para ajustar el tamaño
      rect(i, j, size, size);
    }
  }
}

void grilla(int x, int y, int t, int c) {

  for (int i=0; i<c; i++) {
    for (int j=0; j<c; j++) {
      if ((i+j)%2==0) {
        fill(0, 104, 139);
      } else {
        fill(31, 200, 131);
      }
      rect (x+i*t, y+j*t, t, t) ;
    }
  }
  for (int i=0; i<c+1; i++) {
    for (int j=0; j<c+1; j++) {

      if ((i+j)%10==0) {
        correccion=0;
      } else if ((i+j)%10==5) {
        correccion = 255;
      }
      if ((i+j)%2==0) {
        fill(255-correccion);
      } else {
        fill(0+correccion);
      }
      circle(x+i*t, y+j*t, t/3);
    }
  }
}

float calculateRectangleArea(float width, float height) {
  return width * height;
}
void mousePressed() {
  rect = random(10, 50); 
}
