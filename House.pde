class House extends Building {
  color r;
  color windowcolor = #25EAF2;
  PShape roof;
  //ArrayList<PShape> windows = new ArrayList<PShape>();
  
  House(float x, float y, float bwidth, float bheight, color c, color r) {
    super(x, y, bwidth, bheight, c);
    this.r = r;
    
    building = createShape(GROUP);
    rectMode(CENTER);
    // create walls
    wall = createShape(RECT, x, y, bwidth, bheight);
    wall.setFill(c);
    //create roof
    roof = createShape(TRIANGLE, x, y - (bheight/1.25), x + (bwidth/1.25), y - (bheight/2), x - (bwidth/1.25), y - (bheight/2));
    roof.setFill(r);
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
    building.addChild(roof);
    for (int n = 0; n < windows.size(); n++){
      windows.get(n).setFill(color(#25EAF2));
      building.addChild(windows.get(n));
    }    
  }
}
  
  
