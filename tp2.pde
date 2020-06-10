// IMAGENES
PImage arma;
PImage gorro; 
PImage estrella; 
PImage cactus;
PImage navees;
PImage nave;

// FUENTES

PFont miLetra;

//Variable para Y

float posY;



void setup() {
  size(600, 500);
  background(0);
 
  //cargo imagenes 
  arma = loadImage ("arma.jpeg");
  gorro = loadImage ("gorro.jpeg"); 
  estrella = loadImage ("estrella.jpeg"); 
  cactus = loadImage ("cactus.jpeg");
  navees = loadImage ("navees.jpeg"); 
  nave = loadImage ("nave.jpeg"); 
  
   //cargo tipografia

  miLetra =loadFont ("Arial-Black-48.vlw");
  
  //caracteristicas

  textFont (miLetra);
  imageMode (CENTER); 
  fill (255);
  
  // asigno valores iniciales
  posY=0;
}

void draw() {
  background(0);


//PRIMER PANTALLA
  textSize(15);
  textAlign (LEFT);
  text("art director", width/2, 590+posY);
  
  textSize(25);
  text("ralph eggleston", width/2, 620+posY);
  
  image(gorro, 250, 595+posY);
  
//SEGUNDA PANTALLA
  textAlign (RIGHT);
  textSize(15);
  text("film editors", 400, 780+posY);
 
  textSize(25);
  text("robert gordon", 400, 810+posY);
  text("lee unkrich", 400, 840+posY);
  
  image(arma, 450, 810+posY);

//TERCER PANTALLA 
  textAlign (LEFT);
  textSize(15);
  text("supervising animator", width/2, 1000+posY);
 
  textSize(25);
  text("pete docter", width/2, 1030+posY);
  image(cactus, 250, 1015+posY);

//CUARTA PANTALLA
  textAlign (RIGHT);
  textSize(15);
  text("sound design", 400, 1190+posY);
  
  textSize(25);
  text("gary rydstrom", 400, 1220+posY );
  
  image(nave, 480, 1210+posY);
  
//QUINTA PANTALLA 
  textAlign (LEFT); 
  textSize(15);
  text("production supervisor", width/2, 1380+posY);
  
  textSize(25);
  text("karen robert jackson", width/2, 1410+posY);

  image(estrella, 250, 1390+posY, 80, 80);

//SEXTA PANTALLA
  image(navees, width/2, 1570+posY);
  textSize(15);
  textAlign (CENTER, CENTER);
  text("cast", width/2, 1600+posY);

  textAlign (RIGHT);
  textSize(20);
  text("woody \n buzz lightyear \n mr.potato head \n slinky dog \n rex \n hamm \n bo peep \n andy \n sid \n mrs.davis \n sergeant \n hannah \n tv announcer \n", 295, 1630+posY);
  
  textSize(20);
  textAlign (LEFT);
  text(" tom hanks \n tim allen  \n don rickles \n jim varney \n wallace shawn \n john ratzenberger \n annie potts \n john morris \n erik von detten \n laurie metcalf \n r. lee ermey \n sarah freeman \n penn jillette \n", 305, 1630+posY);

  
//SEPTIMA PANTALLA 
textAlign (CENTER, CENTER); 
textSize (25);
text ("''you´ve got a friend in me''", width/2, 2000+posY); 

textSize (15);
text ("(end title)", width/2, 2020+posY);
text ("written and produced by", width/2, 2045+posY);

textSize (25);
text ("randy newman", width/2,  2065+posY);

textSize (15); 
text ("performed by", width/2, 2090+posY);

textSize (25); 
text ("randy newman & lily lovett", width/2, 2115+posY);

//OCTAVA PANTALLA 
textAlign (CENTER, CENTER); 
textSize (15); 
text ("executive music producer", width/2, 2200+posY);

textSize (25); 
text ("chris montan", width/2, 2220+posY);

//ACTUALIZO VALORES
  posY = posY-1.3;

}
