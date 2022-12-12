class CelestialBody {
  
  // Fields
  float x;
  float y;
  String name;
  String desc;
  Telescope telescope;
  
  // Constructor
  CelestialBody(float x, float y, String n, Telescope t){
    this.x = x;
    this.y = y;
    this.name = n;
    this.telescope = t;
    setDescription();
  }
  
  // Methods
  void setDescription(){
    if(this.name == "Venus"){
      this.desc = "A terrestrial planet and the \nsecond furthest from the sun.";
    }
    else if(this.name == "Mars"){
      this.desc = "A terrestrial planet and the \nfourth furthest from the sun.";
    }
    else if(this.name == "Jupiter"){
      this.desc = "The first gas giant in the solar system. \nFifth furthest away and the largest planet.";
    }
    else if(this.name == "Saturn"){
      this.desc = "";
    }
    else if(this.name == "Andromeda"){
      this.desc = "aa";
    }
    else if(this.name == "Sirius"){
      this.desc = "oiweo";
    }
    else if(this.name == "Arcturus"){
      this.desc = "woieoiw";
    }
    else{
      this.desc = "you shouldn't be here";
    
    }
  }
  
  void displayDescription(){
    fill(255);
    PFont font;
    font = createFont("Times New Roman", 50);
    textFont(font);
    text(this.name, 600, 80);
    
    PFont f;
    f = createFont("Times New Roman", 20);
    textFont(f);
    text(this.desc, 600, 120);
  }
  
}
