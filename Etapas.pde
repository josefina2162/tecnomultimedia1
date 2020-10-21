class Etapas {
  PFont miletra; 
  
  Etapas() {
    
     //CARGO FUENTE
miletra = createFont ( "BebasNeue-Regular.ttf", 50); 
textAlign (CENTER, CENTER); 

  }
  
  void pantalla1 () {
     background (0); 
 fill (#E00202);
textFont (miletra); 
text ("Ayuda a Christofer a cruzar la calle \n sin que lo agarre la policia \n para que pueda escapar", 400, 300, 10);
textSize (20);
text ("Presiona ENTER para comenzar", 400, 550);
  }
  void pantalla2 () {
    background (0);
fill (#E00202);
textFont (miletra); 
text ("Intentalo otra vez", 400, 300, 25);
textSize (15);
text ("Presiona la barra espaciadora", 400, 550);
  }
  void pantalla3 () {
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
