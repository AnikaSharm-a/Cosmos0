class CelestialBody {
  
  // Fields
  float x;
  float y;
  String name;
  int level;
  String beginnerD;
  String middleD;
  String advancedD;
  
  
  // Constructor
  CelestialBody(float x, float y, String n){
    this.x = x;
    this.y = y;
    this.name = n;
    this.level = 1;
    setDescription();
  }
  
  // Methods
  
  void setDescription(){ // sets all the descriptions separately for cleanliness
    //if name matches the selected body then display text
    if (this.name == "venus"){ //lowercase
      this.beginnerD = "";
      this.middleD = "";
      this.advancedD = "";
    
    }
    else if(this.name == "mars"){
      this.beginnerD = "";
      this.middleD = "";
      this.advancedD = "";
    }
    
    else if(this.name == "jupiter"){
      this.beginnerD = "";
      this.middleD = "";
      this.advancedD = "";
    }
    else if(this.name == "saturn"){
      this.beginnerD = "";
      this.middleD = "";
      this.advancedD = "";
    }
    
    else if(this.name == "sirius"){
      this.beginnerD = "hate";
      this.middleD = "crimes";
      this.advancedD = "thought";
    }
    
    else if(this.name == "acturus"){
      this.beginnerD = "";
      this.middleD = "";
      this.advancedD = "";
    }
    
    else if(this.name == "moon"){
      this.beginnerD = "";
      this.middleD = "";
      this.advancedD = "";
    }
    
    else if(this.name == "andromeda"){
    
    }
    else{
      this.beginnerD = "dingus";
      this.middleD = "dingus";
      this.advancedD = "dingus";
    }
     
  
  }

  void displayDescription(){
    if(this.level == 1){
      text(this.beginnerD, 600, 100);
    }
    else if(this.level == 2){
      text(this.middleD, 600, 600);
    }
    else if(this.level == 3){
      text(this.advancedD, 600, 100);
    }
    else{
      print("dingus");    
    }
  }
}
