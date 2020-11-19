class Preso {

//CAMPOS O PROPIEDADES

float x, y;
float tam;
PImage p;

Preso (float x_, float y_){

x = x_;
y = y_;
tam= 100;

p = loadImage ("img25.png");
}

void imagen () {

image (p, x, y, tam, tam);
}


 void mover(){
   if (keyPressed == true) {
   if(key == CODED ){
     if ( keyCode == UP ){
       y -= 20;
     }
     if ( keyCode == DOWN ){
       y += 20;
     }
     if ( keyCode == LEFT ){
      x -= 20;
     }
     if ( keyCode == RIGHT ){
      x += 20;
     }
   }
   }
 }
 
 
 void reiniciar () {
  image (p, x, y, tam, tam);
 }

}
