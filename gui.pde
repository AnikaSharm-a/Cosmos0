/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:890746:
  appc.background(230);
} //_CODE_:window1:890746:

public void cbChosen(GDropList source, GEvent event) { //_CODE_:cb:383729:
  guiCB = cb.getSelectedText();
} //_CODE_:cb:383729:

public void zoomChosen(GDropList source, GEvent event) { //_CODE_:zoom:687620:
  guiZoom = int(zoom.getSelectedText());
} //_CODE_:zoom:687620:

public void focusChanged(GKnob source, GEvent event) { //_CODE_:focus:258626:
  guiFocus = focus.getValueF();
} //_CODE_:focus:258626:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 300, 300, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  cb = new GDropList(window1, 17, 39, 90, 180, 8, 10);
  cb.setItems(loadStrings("list_383729"), 2);
  cb.addEventHandler(this, "cbChosen");
  label1 = new GLabel(window1, 16, 12, 88, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Celestial Body");
  label1.setOpaque(false);
  label2 = new GLabel(window1, 123, 13, 80, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Zoom");
  label2.setOpaque(false);
  zoom = new GDropList(window1, 118, 39, 90, 80, 3, 10);
  zoom.setItems(loadStrings("list_687620"), 0);
  zoom.addEventHandler(this, "zoomChosen");
  focus = new GKnob(window1, 225, 33, 45, 40, 0.8);
  focus.setTurnRange(275, 275);
  focus.setTurnMode(GKnob.CTRL_ANGULAR);
  focus.setShowArcOnly(false);
  focus.setOverArcOnly(false);
  focus.setIncludeOverBezel(false);
  focus.setShowTrack(true);
  focus.setLimits(1.0, 1.0, 10.0);
  focus.setNbrTicks(10);
  focus.setShowTicks(true);
  focus.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  focus.setOpaque(false);
  focus.addEventHandler(this, "focusChanged");
  label3 = new GLabel(window1, 208, 12, 80, 20);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Focus");
  label3.setOpaque(false);
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GDropList cb; 
GLabel label1; 
GLabel label2; 
GDropList zoom; 
GKnob focus; 
GLabel label3; 