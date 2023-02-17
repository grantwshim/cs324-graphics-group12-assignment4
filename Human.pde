class Human {
  PVector arm = new PVector(5, 29.58);
  PVector leg = new PVector(5, 49.749);
  float arm_size = arm.mag();
  float leg_size = leg.mag();
  PShape body;

  float x;
  float y;
  color headColor;
  color bodyColor;
  color limbColor;
  float scale;

  Human(float x, float y, color headColor, color bodyColor, color limbColor, float scale) {
    this.x = x;
    this.y = y;
    this.headColor = headColor;
    this.bodyColor = bodyColor;
    this.limbColor = limbColor;
    this.scale = scale;

    body = createShape(GROUP);
    rectMode(CENTER);

    fill(bodyColor);
    PShape torso = createShape(RECT, 100, 100, 30, 100);
    fill(headColor);
    PShape head = createShape(ELLIPSE, 100, 70, 60, 60);
    strokeWeight(2);
    stroke(limbColor);

    body.addChild(torso);
    body.addChild(head);
  }

  void display() {

    pushMatrix();
    shapeMode(CENTER);
    translate(x-70, y-40);
    scale(scale);

    strokeWeight(2);
    stroke(limbColor);
    line(116, 100, 116+arm.x, 100+arm.y);
    line(84, 100, 84-arm.x, 100+arm.y);
    line(90-leg.x, 150+leg.y, 90, 150);
    line(110+leg.x, 150+leg.y, 110, 150);
    shape(body, 0, 0);
    popMatrix();
  }
}
