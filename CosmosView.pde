// CosmosView main file

import g4p_controls.*;

// Gui variables
int guiZoom = 25;
String guiCB = "Venus";
float guiFocus = 0;


// Setup
void setup(){
  size(900, 500);
  background(0);
  createGUI();  
}


// Drawing
void draw(){
  
  // Telescope object
  Telescope scope = new Telescope(guiZoom, guiFocus, color(255));
  
  // All the celestial body objects
  float planetsize = 2*scope.zoom;
  Planet venus = new Planet(scope, "Venus", 250,250, planetsize, color(230), false, false, false, false, false);
  Planet mars = new Planet(scope, "Mars", 250,250, planetsize, color(116,86,50), true, false, true, false, false);
  Planet jupiter = new Planet(scope, "Jupiter", 250,250, planetsize, color(181,162,132), false, true, false, true, true);
  // Create more cbs here
  
  scope.drawTelescope();
  
  if (guiCB.equals("Venus")) venus.drawPlanet();
  else if (guiCB.equals("Mars")) mars.drawPlanet();
  else if (guiCB.equals("Jupiter")) jupiter.drawPlanet();
  // Draw more cbs here
}
