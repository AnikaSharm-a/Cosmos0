class Planet extends CelestialBody {
  
  // Fields
  float diameter;
  color basecol;
  boolean hasIceCaps;
  boolean hasRings;
  boolean hasSpots; 
  boolean redSpot;
  boolean gasGiant;
  String[] monthsVisible;

  
  // Constructor
  Planet(Telescope t, String n, float x, float y, float d, color c, boolean i, boolean r, boolean s, boolean rs, boolean g, String[] m){
    super(x, y, n, t);
    this.diameter = d;
    this.basecol = c;
    this.hasIceCaps = i;
    this.hasRings = r;
    this.hasSpots = s; 
    this.redSpot = rs;
    this.gasGiant = g;
    this.monthsVisible = m;  
  }
  
  
  // Methods
  
  void drawPlanet(){
    // radius change depending on zoom
    // number of craters/lines change depending on focus
    // x,y changes based on moving of telescope
    
    float zoom = this.telescope.zoom;
    
    stroke(0);
    fill(this.basecol);
    circle(this.x, this.y, this.diameter);
    
    
    // Drawing the spots for Mars
    if (this.hasSpots){ 
      
      float r = red(this.basecol) - 10;
      float g = green(this.basecol) - 10;
      float b = blue(this.basecol) - 10;
      
      color spotcol = color(r, g, b);
      
      strokeWeight(0);
      fill(spotcol);
      stroke(spotcol);
      
      if (zoom == 25) {
        circle(252,257,10);
      }
      
      else if (zoom == 50) {
        circle(252,257,20);
        circle(240,240,20);
      }
      
      else {
        circle(275,270,40);
        circle(250,245,40);
        circle(222,266,40);
      }  
      
    }
   
    
    // Drawing the ice caps
    
  }
  
}
