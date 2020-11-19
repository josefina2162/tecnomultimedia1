class Resize {

  int valorX (int valor){
    return round (map(valor, 0, 800, 0, width));
  }
  int valorY (int valor) {
  return round (map(valor, 0, 600, 0, height));
  }
  }
