class Star {
  float x;
  float y = height/2;
  float radius;
  int r;
  int g;
  int b;
  float speed;
  PShape star;
  float angle;


  Star(float radius, int r, int g, int b, float speed) {
    x = 0;
    angle = -PI/2;
    this.radius = radius;
    this.r = r;
    this.g = g;
    this.b = b;
    this.speed = speed;
    noStroke();

    fill(color(r, g, b));
    star = createShape(ELLIPSE, 0, 0, radius, radius);
  }

  void animate() {

    x = x + cos(angle)*6.75;
    y = y + sin(angle)*5;

    if (y-height/2<=0) {
      pushMatrix();
      translate(x+radius/2, y);
      shape(star);
      popMatrix();
    } else {
    
    }


    angle = angle + speed;
  }
}
