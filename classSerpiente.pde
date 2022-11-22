class classSerpiente{
  PVector posicion,velocidad;
  int tamano,puntos;
  boolean f;
  ArrayList<PVector> cuerpo =new ArrayList<PVector>();
  
  //serpiente estructura
  classSerpiente(){
  f=false;
  tamano=20;
  posicion =new PVector(width/2, height/2);
  velocidad = new PVector(1,1);
  
  cuerpo.add(new PVector(posicion.x, posicion.y));
  }

  void mostrar(){
  fill(0,128,60);
  stroke(0,64,30);
  strokeWeight(2);
  rectMode(CENTER);
  //ajustamos el tamaño de la sepiente a una medida de su comida
    for(PVector c : cuerpo){
    rect(c.x + tamano/2, c.y + tamano/2, tamano, tamano);
    }
  
  }
  
  //control de la serpiente con teclas
  void mover(){
    if(key=='w'){
    posicion.y -= velocidad.y * tamano; //le sumamos el tamaño como forma de que avanze mas rapido
    }else if(key=='s'){
      posicion.y += velocidad.y * tamano;
    }else if(key=='a'){
      posicion.x -= velocidad.x * tamano;
    }else if(key=='d'){
      posicion.x += velocidad.x * tamano;
    }
    //aplicamoslos movimientosde las teclas al cuuerpo para que se mueva
    cuerpo.add(new PVector(posicion.x, posicion.y));
    //removemos la cola que se genera en el cuerpo, esto para que solo seaun punto el que se mueve y no todo el array
    cuerpo.remove(0);
  }
  
  boolean comer(PVector comida){
  PVector cabeza=cuerpo.get(cuerpo.size() - 1);
  float distancia=dist(cabeza.x, cabeza.y, comida.x, comida.y);//La función dist() calcula la distancia entre dos coordenadas. Este valor se usa para determinar la distancia del cursor y un punto de la pantalla.
  
    if(distancia < 1){
    return true;
    }else{
    return false;
    }
  }
  
  void muerte(){
    PVector cabeza=cuerpo.get(cuerpo.size()-1);
  for(int i=0;i<(cuerpo.size()-1);i++){
  PVector cuerpo =this.cuerpo.get(i);
  float distancia=dist(cuerpo.x,cuerpo.y,cabeza.x,cabeza.y);
    if(distancia < 1){
    f=true;
    }  
  }
  }
   void crecer(){
    cuerpo.add(new PVector(posicion.x,posicion.y));
    puntos++;
    }
    int getPuntos(){
      return puntos;
    }
    
    void Border(){
    PVector cabeza=cuerpo.get(cuerpo.size()-1);
    
    if(cabeza.x > width - tamano/2 || cabeza.x < tamano/2 || cabeza.y >height - tamano/2|| cabeza.y < tamano/2){
    f=true;
    }
    }
    
    boolean getF(){
    return f;
    }
}
