class Galaxy extends CelestialBody{
//fields
  float[] xpos; //size 200
  float[] ypos;
//constructor
  Galaxy(float x, float y, String n, Telescope t){
    super(x, y, n, t);
    for(int i = 0; i < xpos.length; i++){
      xpos[i] = random(12.5, 487.5);   
    
    }
    for(int j = 0; j < ypos.length; j++){
        
     }
  }
//methods
}
