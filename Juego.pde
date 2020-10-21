class Juego {

//MUSICA
Minim music;
AudioPlayer playM;
//FUENTE
PFont miletra; 
String estado; 
Preso preso;
//ARREGLO DE PATRULLAS
int pc = 6;
Patrullas [] patrullas = new Patrullas [pc];
PImage fondo;
Juego () {


 //CARGO FUENTE
miletra = createFont ( "BebasNeue-Regular.ttf", 50); 
textAlign (CENTER, CENTER); 

//CARGO MUSICA 
music = new Minim (this);
playM = music.loadFile ("sky.mp3");

estado = "iniciar";
fondo = loadImage ("img0.png");
preso = new Preso (width/2, height/4*3);
for (int i = 0; i < pc; i++ ) {
  patrullas [i] = new Patrullas ();
}

}



void dibujar () {
  

  
if (estado.equals ("iniciar")) {
  
 background (0); 
 fill (#E00202);
textFont (miletra); 
text ("Ayuda a Christofer a cruzar la calle \n sin que lo agarre la policia \n para que pueda escapar", 400, 300, 10);
textSize (20);
text ("Presiona ENTER para comenzar", 400, 550);
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
background (0);
fill (#E00202);
textFont (miletra); 
text ("Intentalo otra vez", 400, 300, 25);
textSize (15);
text ("Presiona la barra espaciadora", 400, 550);


} else if (estado.equals ("ganar")) {
  
background (0);
fill (#E00202);
textFont (miletra); 
textSize (35);
text ("Felicitaciones", 400, 200);
textSize (20);
text ("Christofer esta muy agradecido, \n con tu ayuda ahora es libre.", 400, 350);
textSize (15);
text ("Presiona la barra espaciadora para volver a jugar", 400, 550);

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


//void music (){
//if (estado.equals ("iniciar") || estado.equals ("jugar") ) {
 
// playM.play ();
//  }else if (estado.equals ("morir")){
//    playM.pause ();
//  }
//}
}
