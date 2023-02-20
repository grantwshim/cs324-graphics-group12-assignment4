class Sun extends Star {
  PShape glow;
  float glow_size = 1;
  float glow_incr = .01;

  Sun(float radius, int r, int g, int b, float speed) {
    super( radius, r, g, b, speed);
    x = 0;
    angle = -PI/2;
    noStroke();
    fill(r, g, b, 255/2);
    glow = createShape(ELLIPSE, 0, 0, radius, radius);
  }

  void glow() {

    if (y-height/2<=0) {
      daytime = true;

      pushMatrix();
      translate(x+radius/2, y);

      scale(glow_size);
      shape(glow);
      popMatrix();
    }



    if (glow_size > 1.5) {
      glow_incr = -glow_incr;
    }
    if (glow_size < 1) {
      glow_incr = -glow_incr;
    }

    glow_size += glow_incr;
  }
}
