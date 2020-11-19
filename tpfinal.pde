


Aventura miaventura;
//TP4
import ddf.minim.*;
Minim music;
AudioPlayer playM, playjuego;


void setup () {
miaventura=new Aventura();
  size (800, 600); 

//CARGO MUSICA 
music = new Minim (this);
playM = music.loadFile ("sky.mp3");
playjuego = music.loadFile ("boris.mp3");
playMusicaJuego();
}

void draw () {

miaventura.dibujo();
}

void keyPressed () {
 miaventura.teclas();

}

void mousePressed () {
miaventura.mousse();

  
}
void playMusicaJuego(){
  playM.pause();
  playjuego.play();
}

void playMusicaMiniJuego(){
  playjuego.pause();
  playM.play();
}
