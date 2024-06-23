//rocio zapata 94748/5 COM 2
//

PImage  grilla;
int correccion=0;
float max_distance;

 void setup(){ 
   size (800 , 400);
   grilla = loadImage ("grilla.jpg");
   noStroke();
     max_distance = dist(0, 0, width, height/2);
      
   }
   
   void draw(){
     image (grilla, 0 ,0, 400, 400);
     grilla(400 , 0 , 15 , 40) ;
     grilla(450 , 50 , 20 , 15 ) ;
     grilla (450, mouseY-150, 20 , 15 );
     
   }

   void grilla(int x, int y,int t, int c) {
     
    for(int i=0; i<c; i++) {
      for(int j=0; j<c; j++){
        if((i+j)%2==0){
          fill(0, 104 , 139);
    } else {
      fill(31, 200, 131);
    }
    rect (x+i*t, y+j*t, t, t) ;
      }
      }
      for (int i=0; i<c+1; i++){
      for (int j=0; j<c+1; j++){
        
        if((i+j)%10==0){
          correccion=0;
        }else if ((i+j)%10==5){
          correccion = 255;
        }
        if((i+j)%2==0){
          fill(255-correccion);
        }else {
          fill(0+correccion);
        }
        circle(x+i*t, y+j*t, t/3);
      }
      }

     for(int i = 400; i <= width; i += 30) {
    for(int j = 0; j <= height; j += 30) {
      float size = dist(mouseX, mouseY, i, j);
      size = size/max_distance * 66;
      rect(i, j, size, size);      
}
    }
   }
 
