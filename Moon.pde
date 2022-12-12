class Moon extends CelestialBody {
  
  // Field
  int phase; // (1-8) new to waning crescent
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
    float zoom = this.telescope.zoom;
    int phase = this.phase;
    
    noStroke();
    fill(180);
    circle(x,y,this.diameter);
    
    if (zoom == 25) {
      fill(120);
      noStroke();
      
      // Spots 
      ellipse(x-15, y, 15, 25);
      circle(x-8, y+10, 10);
      circle(x-7, y-5, 15);
      circle(x+5, y-7, 10);
      circle(x+12, y-3, 8);
      circle(x+13, y-10, 5);
      
      fill(230);
      circle(x+3, y+12, 5);
      circle(x-5, y+2, 5);
      
      // Phases
      fill(0);
      if (phase == 1) { circle(x, y, this.diameter); this.desc += "\nCurrent Moon Phase: New Moon"; } // new moon
      else if (phase == 2) { circle(x-15, y, this.diameter); this.desc += "\nCurrent Moon Phase: Waxing Crescent"; } // waxing crescent
      else if (phase == 3) { arc(x, y, this.diameter, this.diameter, HALF_PI, PI+HALF_PI); this.desc += "\nCurrent Moon Phase: First Quarter"; } // first quarter
      else if (phase == 4) { noFill(); stroke(0); strokeWeight(15); ellipse(x+5, y, this.diameter+10, this.diameter+15); this.desc += "\nCurrent Moon Phase: Waxing Gibbous";} // waxing gibbous
      else if (phase == 6) { noFill(); stroke(0); strokeWeight(15); ellipse(x-5, y, this.diameter+10, this.diameter+15); this.desc += "\nCurrent Moon Phase: Waning Gibbous";} // waning gibbous
      else if (phase == 7) { arc(x, y, this.diameter, this.diameter, PI+HALF_PI, TWO_PI+HALF_PI); this.desc += "\nCurrent Moon Phase: Third Quarter"; }// third quarter
      else if (phase == 8) { circle(x+15, y, this.diameter); this.desc += "\nCurrent Moon Phase: Waning Crescent"; } // waning crescent
      else this.desc += "\nCurrent Moon Phase: Full Moon"; // Full Moon
    }
    
    
    else if (zoom == 50) {
      fill(120);
      noStroke();
      
      // Spots 
      ellipse(x-25, y, 30, 50);
      circle(x-5, y-10, 30);
      circle(x+10, y-5, 25);
      circle(x+25, y-10, 20);
      circle(x+35, y, 15);
      circle(x+38, y-20, 8);
      circle(x-15, y+25, 18);
      
      fill(230);
      circle(x+5, y+30, 8);
      circle(x-10, y-3, 8);
      
      // Phases
      fill(0);
      if (phase == 1) circle(x, y, this.diameter); // new moon
      else if (phase == 2) circle(x-15, y, this.diameter); // waxing crescent
      else if (phase == 3) arc(x, y, this.diameter, this.diameter, HALF_PI, PI+HALF_PI) ; // first quarter
      else if (phase == 4) { noFill(); stroke(0); strokeWeight(15); ellipse(x+10, y, this.diameter+10, this.diameter+15); } // waxing gibbous
      else if (phase == 6) { noFill(); stroke(0); strokeWeight(15); ellipse(x-10, y, this.diameter+10, this.diameter+15); } // waning gibbous
      else if (phase == 7) arc(x, y, this.diameter, this.diameter, PI+HALF_PI, TWO_PI+HALF_PI); // third quarter
      else if (phase == 8) circle(x+15, y, this.diameter); // waning crescent
    }
    
    
    else {
      fill(120);
      noStroke();
      
      // Spots 
      ellipse(x-55, y, 70, 100);
      circle(x-10, y-30, 50);
      circle(x+20, y-10, 35);
      circle(x+45, y-15, 30);
      circle(x+65, y, 30);
      circle(x+65, y-45, 20);
      circle(x-25, y+55, 40);
      
      fill(230);
      circle(x+15, y+70, 13);
      circle(x-20, y-5, 10);
      
      // Phases
      fill(0);
      if (phase == 1) circle(x, y, this.diameter); // new moon
      else if (phase == 2) circle(x-30, y, this.diameter); // waxing crescent
      else if (phase == 3) arc(x, y, this.diameter, this.diameter, HALF_PI, PI+HALF_PI) ; // first quarter
      else if (phase == 4) { noFill(); stroke(0); strokeWeight(30); ellipse(x+17, y, this.diameter+10, this.diameter+30); } // waxing gibbous
      else if (phase == 6) { noFill(); stroke(0); strokeWeight(30); ellipse(x-17, y, this.diameter+10, this.diameter+30); } // waning gibbous
      else if (phase == 7) arc(x, y, this.diameter, this.diameter, PI+HALF_PI, TWO_PI+HALF_PI); // third quarter
      else if (phase == 8) circle(x+30, y, this.diameter); // waning crescent
    }
  }
  
}
