// CosmosView main file
PGraphics pg;
PImage img, msk;
import g4p_controls.*;


// Gui variables
int guiZoom = 25;
String guiCB = "Moon";
float guiFocus = 3;
int guiPhase = 2;


// Initial variables
float xpos = 250;
float ypos = 250;


// Setup
void setup(){
  size(900, 500);
  createGUI();  
}


// Drawing
void draw(){
  background(0);
    
  // Telescope object
  Telescope scope = new Telescope(guiZoom, guiFocus, color(255));

  
  // Objects
  float cbsize = 2*scope.zoom;
  
  Moon moon = new Moon(xpos,ypos, "Moon", scope, guiPhase, cbsize);
  Planet venus = new Planet(scope, "Venus", xpos,ypos, cbsize, color(230), false, false, false, false, false);
  Planet mars = new Planet(scope, "Mars", xpos,ypos, cbsize, color(116,86,50), true, false, true, false, false);
  Planet jupiter = new Planet(scope, "Jupiter", xpos,ypos, cbsize, color(181,162,132), false, false, false, true, true);
  Planet saturn = new Planet(scope, "Saturn", xpos,ypos, cbsize, color(200,177,141), false, true, false, false, true);
  CelestialBody andromeda = new CelestialBody(xpos,ypos, "Andromeda", scope);
  
  
  scope.drawTelescope();
  
  
  // For the blur of focus
  pg = createGraphics(400,400);
  pg.beginDraw();
  pg.clear();
  pg.noStroke();
  pg.fill(255);
  pg.ellipse(150,150,380,220);
  pg.endDraw();
  msk = pg.get();
  
  
  // Drawing the objects
  if (guiCB.equals("Moon")) { moon.drawMoon(); moon.displayDescription(); }
  else if (guiCB.equals("Venus")){ venus.drawPlanet(); venus.displayDescription(); }
  else if (guiCB.equals("Mars")){ mars.drawPlanet(); mars.displayDescription(); }
  else if (guiCB.equals("Jupiter")){ jupiter.drawPlanet(); jupiter.displayDescription(); }
  else if (guiCB.equals("Saturn")){ saturn.drawPlanet(); saturn.displayDescription(); }
  else if (guiCB.equals("Andromeda")){ andromeda.drawGalaxy(); andromeda.displayDescription(); }
  
  
  // For the blur effect of focus
  pg.beginDraw();
  pg.image(get(80,100,420,500), 0,0);
  pg.filter(BLUR, scope.focus);
  pg.endDraw();
  img = pg.get();
  img.mask(msk);
  image(img, 80, 100);
}


// Moving the telescope - must click the main window to move it
void keyPressed(){
  if(keyCode==UP) ypos += 2;
  else if(keyCode==DOWN) ypos -= 2;
  if(keyCode==LEFT) xpos += 2;
  else if(keyCode==RIGHT) xpos -= 2;
}
