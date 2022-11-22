class Comida{
PVector posicion;
int tamano;

  Comida(){
  tamano=20;
  posicion=new PVector(int(random(width/tamano)),int(random(height/tamano)));
  posicion.mult(tamano);
   }
  void mostrar(){
  fill(0,255,0);
  rectMode(CENTER);
  rect(posicion.x + tamano/2 ,posicion.y + tamano/2 ,tamano,tamano);
  }
  //retorna la pocicion en que se encuentra la comida
  PVector getPosicion(){ 
  return posicion;
  }

}
