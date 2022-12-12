  class Galaxy extends CelestialBody{

  // Fields
  float[] xpos; 
  float[] ypos;
  
  
  // Constructor
  Galaxy(float x, float y, String n, Telescope t){
    super(x, y, n, t);
    xpos = new float[1000];
    ypos = new float[1000];
    for(int i = 0; i < xpos.length; i++){
      xpos[i] = random(-100, 100);   
    }
    
    for(int j = 0; j < ypos.length; j++){
      ypos[j] = random(-100, 100);
    }
  }

  
  // Methods
  
  void drawGalaxy(){
    fill(255);
    circle(250, 250, 50);
    fill(0);
    circle(250, 250, 1);
    for(int i = 0; i < xpos.length; i++){
      fill(255);
      noStroke();
      float far = dist(this.xpos[i], this.ypos[i], 250, 250);
      if(far <= 400 && far >= 350){
        fill(255);
        circle(250 + this.xpos[i] + 5, 250 + this.ypos[i] + 5, 3);
        float r = random(100, 150);
        float g = random(0, 10);
        float b = random(0, 255);
        fill(r, g, b);
        circle(250 + this.xpos[i], 250 + this.ypos[i], 3);
        
      }
    }
  }
  
}
