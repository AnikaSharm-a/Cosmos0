// Cosmos0 main file


// Initialize variables from gui here


void setup(){
  size(900, 500);
  background(0);
  
  // createGUI();
  // Get and assign variables from gui here
  
}

void draw(){
  
  // Creates and draws the telescope 
  Telescope scope = new Telescope(0, 0, color(255));
  scope.drawTelescope();
  
  
}
