class Patrullas {

//PROPIEDADES O CAMPOS

float x, y;
float vel; 
float tam;
PImage imagen, fondo, imagen2; 


//CONSTRUCTOR 

Patrullas () {

x = -100;
y = random (height-40);
vel = random (10, 50);
tam = 80;

imageMode (CENTER);

//CARGO IMAGENES 
imagen2 = loadImage ("img2.png");
}

//METODOS

void dibujar () {
  
image (imagen2, x, y, tam,tam);
}

void actualizar (){
   x = x + vel;
    if ( x > width  + tam/2 ) {
      reciclar();
    }
  
}

void reciclar () {
x = -5;
y = random (height-40);
vel = random( 1, 7 );
tam = 80;
}


}
