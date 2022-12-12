class Moon extends CelestialBody {
  
  // Field
  int phase; // (1-8) new to waxing crescent
  float diameter; 
  
  // Constructor
  Moon(float x, float y, String n, Telescope t, int p, float d){  
    super(x, y, n, t);
    this.phase = p;
    this.diameter = d;
  }
  
  // Methods
  
  void drawMoon(){
    float x = this.x;
    float y = this.y;
    
    noStroke();
    fill(100);
    circle(x,y,this.diameter);
  }
}
