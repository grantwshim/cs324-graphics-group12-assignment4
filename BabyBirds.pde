class BabyBirds extends Bird {
  float scale = 1;
  
  BabyBirds(float x, float y, color c){
    super(x, y, c);
  }
  void display(float size){
    pushMatrix();
    translate((x - x * size ), (y - y * size));
    scale(size);
    shape(bird, x + 100, y - 100);
    shape(bird, x - 100, y + 100);
    popMatrix();
 
  } 
}
  
