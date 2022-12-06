class Planet extends CelestialBody {
  
  // Fields
  float diameter;
  color basecol;
  boolean hasIceCaps;
  boolean hasRings;
  boolean hasSpots; 
  boolean redSpot;
  boolean gasGiant;

  
  // Constructor
  Planet(Telescope t, String n, float x, float y, float d, color c, boolean i, boolean r, boolean s, boolean rs, boolean g){
    super(x, y, n, t);
    this.diameter = d;
    this.basecol = c;
    this.hasIceCaps = i;
    this.hasRings = r;
    this.hasSpots = s; 
    this.redSpot = rs;
    this.gasGiant = g;
  }
  
  
  // Methods
  
  void drawPlanet(){
    // number of craters/lines change depending on focus - not sure how to do this???
    
    float x = this.x;
    float y = this.y;
    
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
        circle(x+2,y,10);
      }
      
      else if (zoom == 50) {
        circle(x+2,y+7,20);
        circle(x-10,y-10,20);
      }
      
      else {
        circle(x+25,y+20,40);
        circle(x,y-5,40);
        circle(x-28,y+16,40);
      }  
    }
   
    
    // Drawing the ice caps for Mars
    if (this.hasIceCaps) {
      fill(255);
      
      if (zoom == 25) {
        arc(x, y-11, 15, 6, PI, TWO_PI);
        arc(x, y+13, 6, 4, 0, PI);
      }
      
      else if (zoom == 50) {
        arc(x, y-36, 22, 6, PI, TWO_PI);
        arc(x, y+38, 12, 4, 0, PI);
      }
      
      else {
        arc(x, y-78, 75, 20, PI, TWO_PI);
        arc(x, y+83, 55, 12, 0, PI);  
      }
    }
    
    
    // Drawing Jupiter
    if (this.gasGiant && this.name.equals("Jupiter")) {
      
      if (zoom == 25) {
        noStroke();
        
        fill(140,120,94);
        arc(x, y-9, 20, 10, PI, TWO_PI);
        arc(x, y+10, 20, 10, 0, PI);
        
        stroke(220,227,218);
        strokeWeight(3);
        line(x-11, y-7, x+10, y-7);
        line(x-13, y, x+13, y);
        line(x-10, y+8, x+9, y+8);
        
        stroke(137,88,73);
        strokeWeight(3);
        line(x-11, y-6, x+10, y-6);
        line(x-13, y+1, x+13, y+1);
        line(x-10, y+9, x+9, y+9);
        
        if (this.redSpot) {
          fill(215,125,64);
          stroke(137,88,73);
          strokeWeight(1);
          ellipse(x+4, y+4, 10, 5);
        }
        
        noStroke();
        fill(255);
        circle(x-80,y,2);
        circle(x-40,y,2);
        circle(x+40,y,2);
        circle(x+50,y,2);
      }
      
      else if (zoom == 50) {
        noStroke();
        
        fill(140,120,94);
        arc(x, y-21, 64, 36, PI, TWO_PI);
        arc(x, y+22, 63, 35, 0, PI);
        
        stroke(220,227,218);
        strokeWeight(9);
        line(x-31, y-16, x+31, y-16);
        line(x-35, y, x+35, y);
        line(x-31, y+16, x+31, y+16);
        
        stroke(137,88,73);
        strokeWeight(6);
        line(x-34, y-12, x+34, y-12);
        line(x-36, y+5, x+36, y+5);
        line(x-32, y+20, x+32, y+20);
        
        if (this.redSpot) {
          fill(215,125,64);
          stroke(137,88,73);
          strokeWeight(1);
          ellipse(x+12, y+14, 15, 7);
        }
        
        noStroke();
        fill(255);
        circle(x-100,y,5);
        circle(x+100,y,5);
        
        noFill();
        stroke(0);
        strokeWeight(20);
        circle(x,y,this.diameter-15);
      }
      
      else {
        noStroke();
        
        fill(140,120,94);
        arc(x, y-50, 144, 78, PI, TWO_PI);
        arc(x, y+50, 144, 79, 0, PI);
       
        stroke(220,227,218);
        strokeWeight(15);
        line(x-85, y-40, x+85, y-40);
        line(x-90, y, x+90, y);
        line(x-85, y+40, x+85, y+40);
       
        stroke(137,88,73);
        strokeWeight(10);
        line(x-85, y-30, x+85, y-30);
        line(x-90, y-23, x+90, y-23);
        line(x-85, y+20, x+85, y+20);
        
        if (this.redSpot) {
          fill(215,125,64);
          stroke(137,88,73);
          strokeWeight(1);
          ellipse(x+30, y+30, 40, 20);
        }     
        
        noFill();
        stroke(0);
        strokeWeight(20);
        circle(x,y,this.diameter-15);
      }
    }
    
    
    // Drawing Saturn
    if (this.gasGiant && this.name.equals("Saturn")) {
      // To be drawn 
    }
  }
  
}
