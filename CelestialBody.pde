class CelestialBody {
  
  // Fields
  float x;
  float y;
  String name;
  String desc;;
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
    if (this.name.equals("Moon")) this.desc = "The Moon is a satellite of Earth, with a \ndiameter of about 2,159 miles (3,475 \nkilometers). \nIt's gravity pulls at the Earth, \ncausing predictable rises and falls in sea \nlevels known as tides. \n\nThe Moon has 8 phases: new moon, \nwaxing crescent, first quarter, waxing \ngibbous, full moon, waning gibbous, last \nquarter and waning crescent."; 
    else if (this.name.equals("Venus")) this.desc = "Venus is the second planet from the Sun \nand is the brightest object in the sky after \nthe Sun and the Moon. \nIt has a thick, toxic atmosphere filled \nwith carbon dioxide and it’s shrouded in \nthick, yellowish clouds of sulfuric acid that \ntrap heat, making it the hottest planet in \nour solar system. \n\nVenus rotates on its axis backward. This \nmeans that on Venus, the Sun rises in the \nwest and sets in the east, unlike Earth."; 
    else if (this.name.equals("Mars")) this.desc = "Mars is the fourth planet from the Sun – \na dusty, cold, desert world with a very thin \natmosphere. It is also a dynamic planet \nwith seasons, polar ice caps, canyons, \nextinct volcanoes, and evidence that it was \neven more active in the past. \nMars has two moons named Phobos and \nDeimos. \n\nMars is known as the Red Planet because \niron minerals in the Martian soil oxidize, \nor rust, causing the soil to look red.";
    else if (this.name.equals("Jupiter")) this.desc = "Fifth in line from the Sun, Jupiter is the \nlargest planet in the solar system. It is a gas \ngiant made up of ammonia, hydrogen, \nhelium and water. \nJupiter’s iconic Great Red Spot is a giant \nstorm bigger than Earth that has raged for \nhundreds of years. \n\nIt has 80 moons, out of which 57 have been \ngiven official names. It also has rings, but \nthey're too faint to see very well.";
    else if (this.name.equals("Saturn")) this.desc = "Saturn is the sixth planet from the Sun and \nthe second-largest planet in our solar \nsystem. Like fellow gas giant Jupiter, \nSaturn is a massive ball made mostly of \nhydrogen and helium. It's rings are made of \nbillions of small chunks of ice and rock, \nprobably pieces of comets or moons torn \napart by Saturn's strong gravity. \n\nIt has 83 moons, out of which 63 are \nnamed. One of its moons, Titan, is the only \nworld besides Earth with standing liquid.";
    else if (this.name.equals("Andromeda")) this.desc = "Andromeda, also known as Messier 31, is \na spiral galaxy located about 2.5 million \nlight years away. It contains over a trillion \nstars and is the most distant object in the \nsky that you can see with your unaided \neye on a very dark and clear night sky. \n\nIt is thought that the Milky Way and \nAndromeda will collide several billion \nyears from now and merge into a new \n\"Milkomeda\" galaxy.";
  }
  
  
  void displayDescription(){
    fill(255);
    PFont font;
    font = createFont("Times New Roman", 50);
    textFont(font);
    text(this.name, 550, 80);
    
    PFont f;
    f = createFont("Times New Roman", 20);
    textFont(f);
    text(this.desc, 550, 150);
  }
  
  
  void drawGalaxy() {    
    float zoom = this.telescope.zoom;
    
    if (zoom == 25){
      stroke(85,65,74);
      strokeWeight(6);
      fill(138,131,139, 150);
      ellipse(x, y, 30, 10);

      noStroke();
      fill(138,131,139, 50);
      ellipse(x, y, 65, 25);
      
      // Center
      fill(240);
      circle(x, y, 7);
    }
    
    
    else if (zoom == 50){
      stroke(85,65,74);
      strokeWeight(10);
      fill(138,131,139, 150);
      ellipse(x, y, 45, 15);

      noStroke();
      fill(138,131,139, 50);
      ellipse(x, y, 95, 40);
      
      // Center
      fill(240);
      circle(x, y, 10);
    }
    
    
    else {
      stroke(85,65,74);
      strokeWeight(10);
      fill(138,131,139, 150);
      ellipse(x, y, 65, 15);

      noStroke();
      fill(138,131,139, 50);
      ellipse(x, y, 115, 40);
      
      // Center
      fill(240);
      circle(x, y, 13);      
    }
  }
  
}
