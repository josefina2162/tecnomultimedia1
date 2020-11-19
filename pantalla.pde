class Pantalla {
 

  Textos mistextos;
  Resize resize;
  
int numImagenes = 23 ; 
PImage [] images = new PImage [numImagenes]; 

String estado; 
float posXP, posXC;
int RESET = 0;
int CANTIDAD_DE_MS = 3 * 1000;
int POS_INICIAL_PATRULLA = 1026;
float VELOCIDAD_PATRULLA = 160;


Pantalla () {
  resize = new Resize ();
  mistextos= new Textos();
  estado = "titulo";



  posXC = 0;
  posXP= 0;
background (255);

for (int i = 0; i <numImagenes; i++ ) {
  images [i] = loadImage ("img" + i + ".png" );
}
   imageMode (CENTER);
}

void simularTiempo(float dt){
  if(estado.equals ("patrulla") && posXP > - images[1].width){
    posXP -= VELOCIDAD_PATRULLA * dt;
  }
}

void cambiarEstado(String nuevoEstado ){
  this.estado = nuevoEstado;
  this.RESET = millis();
}

void dibujar () {
  println(miaventura.mijuego.estado);
  println(estado);
mistextos.arreglosTextos ();
if (estado.equals ("titulo")) {
    posXP = POS_INICIAL_PATRULLA;
    image (images [0], resize.valorX (400), resize.valorX (300));
    texto (50, 0);
    text (mistextos.misTextos [0], resize.valorX (400), resize.valorY (50)); 
    fill (250, 3, 3);
    text (mistextos.misTextos [0], resize.valorX (404), resize.valorY (54));
    texto (30, 0);
    text (mistextos.misTextos [1], resize.valorX (400), resize.valorY (550), 10);
    
    
  } else if (estado.equals ("patrulla") ) {
     image (images [0], resize.valorX (400), resize.valorY (300));
    image (images [1], VELOCIDAD_PATRULLA + posXP, resize.valorY (460), 250, 250);
    texto (12, 0);
    flechaI ();
    text (mistextos.misTextos [2], resize.valorX (50), resize.valorY (460));
  } else if (estado.equals ("rejas") ) {
    trasRejas ();
    text ( mistextos.misTextos [3], resize.valorX (400), resize.valorY (550)); 
    flechaD ();
    texto (12,  #FA0303);
    cuadrados (resize.valorX (650), resize.valorY (500), 80, 20, #FF0303);
     texto (12, 0);
    text (mistextos.misTextos [4], resize.valorX (690), resize.valorY (510));
  } else if (estado.equals ("trato_con_la_policia") ) {

    trato (); 
    image (images [7], resize.valorX (600), resize.valorY (200), 200, 200);
    image (images [8], resize.valorX (600), resize.valorY (190), 80, 80);
    texto (15, 0);
    text (mistextos.misTextos [5], resize.valorX (200), resize.valorY (150));

 
    cuadrados (resize.valorX (25), resize.valorY (500), 250, 150, #FF0303);
    texto (14, 0);
    text (mistextos.misTextos [6], resize.valorX (150), resize.valorY (550));
  } else if (estado.equals ("acepta_el_trato") ) {


    trato (); 
    image (images [9], resize.valorX (510), resize.valorY (250), 200, 200);
    image (images [10], resize.valorX (510),resize.valorY (225), 60, 60);
     texto (18, 0);
    text (mistextos.misTextos [7], resize.valorX (235), resize.valorY (150));
    flechaI ();
    cuadrados (resize.valorX (50), resize.valorY (500), 80, 20, #FF0303);
    texto (12, 0);
    text (mistextos.misTextos [4],resize.valorX (90), resize.valorY (510));
  } else if (estado.equals ("engaño"))
  {
   trato (); 
    image (images [9], resize.valorX (510), resize.valorY (250), 200, 200);
    image (images [10], resize.valorX (510), resize.valorY (225), 60, 60);
    texto (18, 0);
    text (mistextos.misTextos [9], resize.valorX (300), resize.valorY (120));
    flechaI ();
     cuadrados (resize.valorX (50), resize.valorY (500), 80, 20, #FF0303);
    texto (12, 0);
    text (mistextos.misTextos [4], resize.valorX (90), resize.valorY (510));
  } else if (estado.equals ("fabrica") ) {

    if ( millis() > RESET+CANTIDAD_DE_MS ) {
      estado = "encuentra_al_embajador";
    }
    
    viajeFabrica (); 
  } else if (estado.equals ("encuentra_al_embajador") ) {

    image (images [22], resize.valorX (400), resize.valorY (300), 800, 600);
    image (images [8], resize.valorX (100), resize.valorY (500), 200, 200);
    image (images [6], resize.valorX (450), resize.valorY (500), 300, 300);
    image (images [13], resize.valorX (220), resize.valorY (550), 150, 150);
    image (images [13], resize.valorX (550), resize.valorY (550), 150, 150);
     cuadrados (250, 30, 300, 80, #FF0303);
     texto (20, 0);
    text (mistextos.misTextos [12], resize.valorX (400), resize.valorY (65));
  } else if (estado.equals ("enojo")) {

   ciudad (); 
    image (images [14], resize.valorX (500), resize.valorY (400), 300, 300); 
    cuadrados (resize.valorX (200), resize.valorY (30), 400, 80, #FF0303);
    texto (20, 0);
    text (mistextos.misTextos [13], resize.valorX (400), resize.valorY (65));
   flechaD ();
    cuadrados (resize.valorX (650), resize.valorY (500), 80, 20, #FF0303);
    texto (12, 0);
    text (mistextos.misTextos [14], resize.valorX (690), resize.valorY (510));
  } else if (estado.equals ("prision2")) {

    trasRejas ();
    text (mistextos. misTextos [15], resize.valorX (400), resize.valorY (550));
  } else if (estado.equals ("fabrica2") ) {


    viajeFabrica (); 
    if ( millis() > RESET+CANTIDAD_DE_MS ) {
      estado = "encuentra";
    }
 
   } else if (estado.equals ("encuentra") ) {

     fabricaEmbajador ();
    image (images [8], mouseX, mouseY, 150, 150);
  cuadrados (resize.valorX (250), resize.valorY (50), 300, 50, #FF0303);
    texto (20, 0);
    text (mistextos.misTextos [8], resize.valorX (400), resize.valorY (65));
  } else if (estado.equals ("escapar" )) {
  fabricaEmbajador ();
   cuadrados (resize.valorX (250), resize.valorY (30), 300, 80, #FF0303);
     texto (20, 0);
    text (mistextos.misTextos [17], resize.valorX (400), resize.valorY (65));
  } else if (estado.equals ("salvar") ) {

     ciudad (); 
    image (images [5], resize.valorX (500), resize.valorY (400), 300, 300); 
    image (images [16], resize.valorX (550), resize.valorY (200), 80, 80); 
     cuadrados (resize.valorX (150), resize.valorY (50), 500, 50, #FF0303);
    texto (15, 0);
    text (mistextos.misTextos [18], resize.valorX (400), resize.valorY (65));
  } else if (estado.equals ("boletos") ) {

    background (255);
    image (images [17], resize.valorX  (400), resize.valorY (200), 300, 300); 
    image (images [18], resize.valorX (400), resize.valorY (450), 300, 300); 
     texto (20, 0);
    text (mistextos.misTextos [10], resize.valorX (135), resize.valorY (400));
    text (mistextos.misTextos [20], resize.valorX (600), resize.valorY (200)); 
    text (mistextos.misTextos [21], resize.valorX (600), resize.valorY (450));
  } else if (estado.equals ("viaje") ) {

    barco ();
    if ( millis() > RESET+CANTIDAD_DE_MS ) {

      estado = "mexico";
    }
  } else if (estado.equals ("mexico")) {

    flechaD ();
    image (images [19], resize.valorX (400), resize.valorY (300), 800, 600); 
    image (images [6], resize.valorX (350), resize.valorY (515), 250, 250);
    cuadrados (resize.valorX (650), resize.valorY (500), 80, 20, #FF0303);
    texto (12, 0);
    text (mistextos.misTextos [4], resize.valorX (690), resize.valorY (510));
  } else if (estado.equals ("viajee")) {

    barco ();
    if ( millis() > RESET+CANTIDAD_DE_MS ) {
      estado = "china";
    }
  } else if (estado.equals ("china") ) {
    flechaD ();
    image (images [21], resize.valorX (400), resize.valorY (300), 800, 600);
    image (images [6], resize.valorX (300), resize.valorY (515), 250, 250);
  cuadrados (resize.valorX (650), resize.valorY (500), 80, 20, #FF0303);
     texto (12, 0);
    text (mistextos.misTextos [4], resize.valorX (690), resize.valorY (510));
  } else if (estado.equals ("creditos") ) {

    background (0); 
    texto (30, 255);
    text (mistextos.misTextos [16], resize.valorX (400), resize.valorY (150)); 
    textSize (25); 
    text (mistextos.misTextos [19], resize.valorX (400), resize.valorY (300));
     cuadrados (resize.valorX (260), resize.valorY (490), 300, 20, #FF0303);
    texto (12, 0);
    text (mistextos.misTextos [22], resize.valorX (400), resize.valorY (500));
  }



}



void trasRejas () {
   background (50);
    image (images [3], resize.valorX (400), resize.valorY (300), 800, 600);
    fill (250, 3, 3);
    rect (resize.valorX (200), resize.valorY (500), 400, 200);
    fill (0);
    textSize (13);
  
}

void trato () {
   background (#B7B1B1);
    image (images [5], resize.valorX (600), resize.valorY (400), 300, 300);
    image (images [6], resize.valorX (400), resize.valorY (400), 350, 350);
  
}

void viajeFabrica () {
    background (255);
    image (images [11], resize.valorX (400), resize.valorY (300), 800, 600); 
    image (images [12], resize.valorX (400), resize.valorY (400), 200, 200);
    textSize (40);
    fill (0);
    text ("Viajando a la fabrica...", 450, 150);
    
}
void fabricaEmbajador () {
    image (images [22], resize.valorX (400), resize.valorY (300), 800, 600); 
    image (images [6], resize.valorX (450),resize.valorY (500), 300, 300);
    image (images [13], resize.valorX (220),resize.valorY (550), 150, 150);
    image (images [15], resize.valorX (550), resize.valorY (550), 150, 150);
}
void ciudad () {
   image (images [11], resize.valorX (400), resize.valorY (300), 800, 600); 
    image (images [1], resize.valorX (850), resize.valorY (500), 500, 600);
    image (images [8], resize.valorX (250), resize.valorY (450), 250, 250);
}

void flechaD () {
  image (images [4],resize.valorX (700),resize.valorY (550), 50, 50);
}

void flechaI () {
   image (images [2], resize.valorX (50), resize.valorY (460), 50, 50);
}
 
void barco () {
   image (images [20], resize.valorX (400), resize.valorY (300), 800, 600); 
}
void texto (int tam, int col) {
  textFont (mistextos.miletra); 
  fill (col);
  textSize (tam); 
  
}
void cuadrados (int x, int y, int tam, int tam2, int col) {
  fill (col);
  rect (x, y, tam, tam2);
  
  }

}
