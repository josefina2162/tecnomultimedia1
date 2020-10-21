class Preso {

//CAMPOS O PROPIEDADES

float x, y;
float tam;
PImage p;

Preso (float x_, float y_){

x = x_;
y = y_;
tam= 100;

p = loadImage ("img6.png");
}

void imagen () {

image (p, x, y, tam, tam);
}

 void moverAbajo() {
    if ( keyCode == UP )
       y -= 20;
  }

  void moverArriba() {
    if ( keyCode == DOWN )
       y += 20;
  }
  
 void moverIzq() {
    if ( keyCode == LEFT )
      
      x -= 20;
  }

  void moverDer() {
    if ( keyCode == RIGHT )
    
      x += 20;
  }

void ganar (){
    if ( y > height + tam/2 ) {
      
    }
  
}
}
