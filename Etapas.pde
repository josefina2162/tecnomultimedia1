class Etapas {
  PFont miletra; 
  Resize resize;
  
  Etapas() {
    
     //CARGO FUENTE
miletra = createFont ( "BebasNeue-Regular.ttf", 50); 
textAlign (CENTER, CENTER); 
resize = new Resize ();

  }
  
  void pantalla1 () {
     background (0); 
 fill (#E00202);
textFont (miletra); 
text ("Ayuda a Christofer a cruzar la calle \n sin que lo agarre la policia \n para que pueda escapar", resize.valorX (400), resize.valorY (300), 10);
textSize (20);
text ("Presiona ENTER para comenzar", resize.valorX (400), resize.valorY (550));
  }
  void pantalla2 () {
    background (0);
fill (#E00202);
textFont (miletra); 
text ("Intentalo otra vez", resize.valorX (400), resize.valorY (300), 25);
textSize (15);
text ("Presiona la barra espaciadora", resize.valorX (400), resize.valorY (550));
  }
  void pantalla3 () {
    background (0);
fill (#E00202);
textFont (miletra); 
textSize (35);
text ("Felicitaciones", resize.valorX (400), resize.valorY (200));
textSize (20);
text ("Christofer esta muy agradecido, \n con tu ayuda ahora es libre.", resize.valorX (400), resize.valorY (350));
textSize (15);
text ("Presiona la barra espaciadora para seguir la aventura", resize.valorX (400), resize.valorY (550));

  }
  
}
