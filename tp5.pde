import ddf.minim.*;
//TP5
/* Cuando llego a la pantalla donde Christofer se escapa, 
para pasar a la siguiente pantalla donde elije el pasaje, tendra que primero 
superar un mini juego, en donde tiene que cruzar la calle en vertical sin que
lo agarren las patrullas que se moveran en forma horizontal algunas a una velocidad 
mayor que otras*/
//Quise agregar musica pero no pude me salta error en PlayM y tampoco sabia si import ddf.minim.*; iba en la pantalla principal


Juego juego;

void setup (){

  size (800, 600);
  juego = new Juego ();
}

void draw () {
  background (0);
  juego.dibujar();
  //juego.music ();

}
void keyPressed() {
  juego.teclas();
}
