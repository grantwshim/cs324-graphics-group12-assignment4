class MovingPerson extends Human {
  float rot_angle = PI/6;
  float speed;
  PVector offset;
  float aVel = 0.0;
  float aAcc = 0.0;

  MovingPerson(float x, float y, color headColor, color bodyColor, color limbColor, float scale, float speed, PVector offset) {
    super( x, y, headColor, bodyColor, limbColor, scale);
    this.speed = speed;
    this.offset = offset;
  }
  
  void move() {

    arm.x = arm_size*sin(rot_angle);
    arm.y = arm_size*cos(rot_angle);
    leg.x = leg_size*sin(rot_angle);
    leg.y = leg_size*cos(rot_angle);
    aAcc = -.03 * sin(rot_angle);

    rot_angle += aVel;
    aVel += aAcc;

    aVel *= .97;

    if (x + offset.x > width || x  < offset.y) {
      speed = -speed;
    }

    x += speed;
  }
}
