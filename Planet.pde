class Planet extends CelestialBody {
  
  // Fields
  boolean hasIceCaps;
  boolean hasRings;
  float spotLevel; // (0-1)
  boolean redSpot;
  boolean gasGiant;
  ArrayList<String> monthsVisible;

  
  // Constructor
  Planet(String n, float x, float y, boolean i, boolean r, float s, boolean rs, boolean g, ArrayList<String> m){
    super(x, y, n);
    this.hasIceCaps = i;
    this.hasRings = r;
    this.spotLevel = s; 
    this.redSpot = rs;
    this.gasGiant = g;
    this.monthsVisible = m;  
  }
  
  
  // Methods
  
  void drawPlanet(){
    // Depends on zoom and focus
  }
  
}
