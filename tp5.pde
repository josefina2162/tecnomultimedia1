import ddf.minim.*;
//TP5
/* Cuando llego a la pantalla donde Christofer se escapa, 
para pasar a la siguiente pantalla donde elije el pasaje, tendra que primero 
superar un mini juego, en donde tiene que cruzar la calle en vertical sin que
lo agarren las patrullas que se moveran en forma horizontal algunas a una velocidad 
mayor que otras*/
//Tuve que utilizar variables globales para la musica porque sino no me funcionaba 

//MUSICA
Minim music;
AudioPlayer playM;
Juego juego;

void setup (){

  size (800, 600);
  juego = new Juego ();
//CARGO MUSICA 
music = new Minim (this);
playM = music.loadFile ("sky.mp3");
}

void draw () {
  background (0);
  juego.dibujar();
  juego.music ();

}
void keyPressed() {
  juego.teclas();
}
