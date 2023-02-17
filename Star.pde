class Star{
  float x = 0;
  float y = height/2;
  float radius;
  int r;
  int g;
  int b;
  float speed;

Star(float radius,int r,int g,int b, float speed){
  this.radius = radius;
  this.r = r;
  this.g = g;
  this.b = b;
  this.speed = speed;
}

void animate(){
  
fill(color(r,g,b));
ellipse(x,y,radius,radius);
}
}
