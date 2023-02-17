class BabyBirds extends Bird {
  
  BabyBirds(float x, float y, color c){
    super(x, y, c);
  }
  void display(float size){
    pushMatrix();
    translate((x - x * size ), (y - y * size));
    scale(size);
    shape(bird, x + 100, y + 100);
    shape(bird, x - 100, y + 100);
    popMatrix();
    wing.translate(-25, 25);
    wing.rotate(PI);
  } 
}
  
