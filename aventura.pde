class Aventura {
Juego mijuego;
Pantalla mipantalla;
Resize resize;

String estado; 

float DELTA_TIEMPO = 0.05;
int CANTIDAD_DE_MS = 3 * 1000;

Aventura (){
mipantalla = new Pantalla();
mijuego = new Juego ();
resize = new Resize ();

}

void dibujo () {
    background (255);
    if (mipantalla.estado.equals ("minijuego")) {
      miaventura.mijuego.dibujar();
      miaventura.mijuego.teclas();
    } else {
      mipantalla.simularTiempo(DELTA_TIEMPO);
      mipantalla.dibujar ();
    }
}
void teclas () {
   if (key == ' ' && mipantalla.estado.equals ("minijuego")  && mijuego.estado.equals ("ganar")){
      mipantalla.cambiarEstado("boletos");
      playMusicaJuego();
   }
  
  if (key == ' ' && mipantalla.estado.equals ("titulo")) {
    mipantalla.cambiarEstado("patrulla");
  }

  if (key == ' ' && mipantalla.estado.equals ("rejas")) {

    mipantalla.cambiarEstado("trato_con_la_policia");
  }

  if (key == 'm' && mipantalla.estado.equals ("trato_con_la_policia")) {

    mipantalla.cambiarEstado("acepta_el_trato");
  }

  if (key == 'n' && mipantalla.estado.equals ("trato_con_la_policia")) {

    mipantalla.cambiarEstado("engaño");
  }

  if (key == ' ' && mipantalla.estado.equals ("engaño")) {

    mipantalla.cambiarEstado("fabrica2"); 
   
  }

  if (key == ' ' && mipantalla.estado.equals ("acepta_el_trato")) {

    mipantalla.cambiarEstado( "fabrica"); 
  }

  if (key == 'm' && mipantalla.estado.equals ("escapar")) {

    mipantalla.cambiarEstado("salvar");
  }

  if (key == ' ' && mipantalla.estado.equals ("salvar")) {
    mipantalla.cambiarEstado("minijuego");
    playMusicaMiniJuego();
  }
  
  if (key == ' ' && mijuego.estado.equals ("minijuego")) {
  
    mipantalla.cambiarEstado("boletos");
  }
  if (key == 'a' && mipantalla.estado.equals ("boletos")) {
    mipantalla.cambiarEstado( "viaje"); 
    
  }

  if (key == 'b' && mipantalla.estado.equals ("boletos")) {
    mipantalla.cambiarEstado("viajee"); 
  }

  if (key == 'n' && mipantalla.estado.equals ("encuentra_al_embajador")) {

    mipantalla.cambiarEstado("enojo");
  }
  if (key == 'm' && mipantalla.estado.equals ("enojo")) {

    mipantalla.cambiarEstado("prision2");
  }

  if (mipantalla.estado.equals ("china") || mipantalla.estado.equals ("mexico") || mipantalla.estado.equals ("prision2")) {
    if (key == ' ') {
      mipantalla.cambiarEstado("creditos");
    }
  }

  if (keyCode == BACKSPACE ) {
    mipantalla.cambiarEstado("titulo"); 
    mijuego.reset();
  }
  
}

void mousse(){
  if (mouseX >  resize.valorX (50)  && mouseX < resize.valorX (50+50) && mouseY > resize.valorY (460) && mouseY < resize.valorY (460+50) && mipantalla.estado.equals ("patrulla") ) {

    mipantalla.cambiarEstado("rejas");
  }
  image (mipantalla.images [13], resize.valorX (220), resize.valorY (550), 150, 150);
  if (mouseX > resize.valorX (220) && mouseX < resize.valorX (220+150) && mouseY > resize.valorY (550) && mouseY < resize.valorY (550+150) && mipantalla.estado.equals ("encuentra")) {

    mipantalla.cambiarEstado("escapar");
  }
}

}
