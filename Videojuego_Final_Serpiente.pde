  classSerpiente s;
  Comida c;
  boolean GameOver;
  
  void setup(){
  size(600,600);
  frameRate(10);
  s= new classSerpiente();
  c=new Comida();
  GameOver=false;
  }
  
  void draw(){
  background(20,191,200);
  stroke(255);
   if(!GameOver){
    //mandamos a llamar a la clase comida con el objeto que creamos
    c.mostrar();
    //le manda como parametro comida al metodo comer la posicion de a comida cada que avanza,para que al pasarse su posicion 
    //genere un nuevo objeto comida en oro lugar random de la pantalla y borre el que se paso.
    //llamamos a nuestra funcion que despliega la serpiente
    if(s.comer(c.getPosicion())){
    c = new Comida();
    s.crecer(); 
    }
    if(s.getF()){
    GameOver=true;
    }
    s.mostrar();
    //llamamos ala funcion que mueve la serpiente
    s.mover();
    s.Border();
    s.muerte();
   }else{
     fill(200);
   text("Juego Terminado",200,200);
   }
    
  }
 
