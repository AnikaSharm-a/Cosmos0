class CelestialBody {
  
  // Fields
  float x;
  float y;
  String name;
  String beginnerD;
  String middleD;
  String advancedD;
  Telescope telescope;
  
  // Constructor
  CelestialBody(float x, float y, String n, Telescope t){
    this.x = x;
    this.y = y;
    this.name = n;
    this.telescope = t;
  }
  
  // Methods
  
  void displayDescription(){}
  
}
