class Building {
  float x, y, bwidth, bheight;
  color c;
  color windowcolor = #25EAF2;
  PShape building, wall;
  ArrayList<PShape> windows = new ArrayList<PShape>();

  
  Building(float x, float y, float bwidth, float bheight, color c){
    this.x = x;
    this.y = y;
    this.bwidth = bwidth;
    this.bheight = bheight;
    this.c = c;
    
    building = createShape(GROUP);
    rectMode(CENTER);
    // create walls
    wall = createShape(RECT, x, y, bwidth, bheight);
    wall.setFill(c);
    //create windows
    float i = y;
    while (i > y - (bheight/2)){ 
      float j = x - (bwidth/2) + (0.175*bwidth);
      while (j <= (bwidth/2 + x)) {
        windows.add(createShape(RECT, j, i, bwidth/4, bheight/4));
        j += 0.325* bwidth;
      }
      i -= 0.325*bheight;
    }
    //add parts of building
    building.addChild(wall);
    for (int n = 0; n < windows.size(); n++){
      windows.get(n).setFill(color(#25EAF2));
      building.addChild(windows.get(n));
    }    
  }
  
  void display() {
    shape(building);
  }
  
  void transition(){
    colorMode(HSB, 360, 100, 100);
    
    //println(hue(c), brightness(c));
    float dim = -.005; // need to move this outside
    if (brightness(c) < 64) {
      dim = dim * -1;
    }

    
    for (int n = 0; n < windows.size(); n++){
      windowcolor = color (hue(windowcolor), saturation(windowcolor), brightness(windowcolor) + dim);
      windows.get(n).setFill(windowcolor);  
    }
    for (int i = 0; i < windows.size(); i++) {
      float light = random(0, 1);
      if (light < .005) {
        windows.get(i).setFill(#FFFF00);        
      } else if (light > .005) {
        windows.get(i).setFill(windowcolor);
      }
    }
  }
}
    
    
