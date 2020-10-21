class Juego {


//FUENTE
String estado; 
Preso preso;
Etapas etapas;

//ARREGLO DE PATRULLAS
int pc = 6;
Patrullas [] patrullas = new Patrullas [pc];
PImage fondo;

Juego () {




etapas = new Etapas ();
estado = "iniciar";
fondo = loadImage ("img0.png");
preso = new Preso (width/2, height/4*3);
for (int i = 0; i < pc; i++ ) {
  patrullas [i] = new Patrullas ();
}

}



void dibujar () {
  

  
if (estado.equals ("iniciar")) {
  
  etapas.pantalla1();

}else if (estado.equals ("jugar") ) {

  //dibujo mis objetos 

image (fondo, width/2, height/2, 800, 600);

preso.imagen ();
 if (preso.y <0) {
  
  estado="ganar";
}
 if ( estado.equals( "jugar" ) ) {
      for ( int i = 0; i < pc ; i++ ) {  
// actualizo pocision de las patrullas
        patrullas[i].dibujar();
        patrullas[i].actualizar();
        
   if(dist(patrullas[i].x,patrullas[i].y,preso.x,preso.y)<100){   
  estado = "morir";
  


}
}  
}
} else if (estado.equals ("morir")) {

etapas.pantalla2();


} else if (estado.equals ("ganar")) {
  

etapas.pantalla3();
}
}

 void teclas() {
    preso.moverArriba();
    preso.moverAbajo();
    preso.moverDer();
    preso.moverIzq ();
    if (keyCode == ENTER && estado.equals ("iniciar")){
      estado = "jugar";
    }else if (keyCode == ' ' && estado.equals ("morir")){
      estado = "jugar";
    }else if (keyCode == ' ' && estado.equals ("ganar")){
      estado = "jugar";
    }
  }


void music (){
  if (estado.equals ("iniciar") || estado.equals ("jugar") ) {
 
playM.play ();
  }else if (estado.equals ("morir")){
   playM.pause ();
 }
}
}
