class Juego {


//FUENTE
String estado; 
Preso preso;
Etapas etapas;
Pantalla mipantalla;

//ARREGLO DE PATRULLAS
int pc = 6;
Patrullas [] patrullas = new Patrullas [pc];

PImage fondo;

Juego () {

inicializar();

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
    miaventura.mijuego.preso.mover();
    if (keyCode == ENTER && miaventura.mijuego.estado.equals ("iniciar")){
     miaventura.mijuego.estado = "jugar";
    }else if (keyCode == ' ' && miaventura.mijuego.estado.equals ("morir")){
     miaventura.mijuego.estado = "jugar";
     miaventura.mijuego. preso.reiniciar ();
    }
  }
  
  void inicializar(){
    etapas = new Etapas ();
    estado = "iniciar";
    fondo = loadImage ("img23.png");
    preso = new Preso (width/2, height/4*3);
    for (int i = 0; i < pc; i++ ) {
      patrullas [i] = new Patrullas ();
    }
  }
  
  void reset(){
   inicializar();
  }

}
