class Bird {
  PShape bird, beak, head, body, wing;
  float x, y;
  float size;
  float speed;
  float COUNT;
  color c;
  
  
  
  Bird(float x, float y, color c) { 
    this.x = x;
    this.y = y;
    this.c = c;
    
    bird = createShape(GROUP);
    head = createShape(ELLIPSE, -50, 0, 50, 50);
    head.setFill(c);
    beak = createShape(TRIANGLE, -100, 0, -50, -25, -50, 25);
    beak.setFill(#F0DE11);
    body = createShape(ARC, 0, 0, 100, 50, 0, PI, CHORD);
    body.setFill(c);
    wing = createShape(ARC, -10, -25, 100, 75, 0, PI *.60, CHORD);
    wing.setFill(c);
    
    bird.addChild(body);
    bird.addChild(beak);
    bird.addChild(head);
    bird.addChild(wing);
    
    //shape(bird);
  }
  
  void display(float size) {
    //wing.translate(-25, 25);
    //wing.rotate(PI);
    pushMatrix();
    translate((x - x * size ), (y - y * size));
    scale(size);
    shape(bird, x , y);
    popMatrix();
    wing.translate(-25, 25);
    wing.rotate(PI);
    
  }
  void move(float speed) {
    x -= speed;
    COUNT++;
    if (x < 0) {
      x = width;
    }
    if (COUNT < 5){
      wing.translate(-25, 25);
      wing.rotate(PI);
    } else if (COUNT > 5) {
      wing.rotate(PI);
      wing.translate(25, -25);
    } 
    if (COUNT == 10){
      COUNT = 0;
    }
  }
}
    
  
