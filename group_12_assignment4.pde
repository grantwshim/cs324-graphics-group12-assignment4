Human h1;
Human h2;
Human h3;
Human h4;
Bird bird;
BabyBirds babybird1;
BabyBirds babybird2;
MovingPerson mp;
Sun sun;
Building buil1;
Building buil2;
Building buil3;
Building buil4;
House house;
Moon moon;

boolean daytime = true;
boolean nighttime = false;
void setup() {
  size(800, 600);
  h1 = new Human(500, 350, color(255), color(0, 255, 255), color(0), .5);
  h2 = new Human(600, 350, color(255), color(255, 0, 0), color(0), .5);
  h3 = new Human(650, 350, color(255), color(255, 0, 255), color(0), .5);
  h4 = new Human(725, 350, color(255), color(255, 255, 0), color(0), .5);

  bird = new Bird(100, 100, color(255, 255, 255));
  babybird1 = new BabyBirds(100, 100, color(255, 255, 255));
  babybird2 = new BabyBirds(100, 100, color(255, 255, 255));
  mp = new MovingPerson(400, 400, color(255), color(0, 0, 255), color(0), 1, 2, new PVector(75, 250));
  sun = new Sun(50, 254, 255, 3, PI/180);
  moon = new Moon(50, 235, 237, 237, PI/180);
  buil1 = new Building(450, 300, 100, 200, color(126, 89, 94));
  buil2 = new Building(550, 250, 100, 300, color(126, 89, 94));
  buil3 = new Building(650, 265, 100, 270, color(126, 89, 94));
  buil4 = new Building(750, 275, 100, 250, color(126, 89, 94));
  house = new House(150, 500, 200, 400, color(41, 77, 57), color(41, 77, 57));
}
void draw() {
  background(255);
  rectMode(CORNER);
  fill(0, 255, 0);

  rect(0, 400, width, height-400);

  if (daytime) {
    fill(#6CE0FF);
    rect(0, 0, width, height-200);
  } else {
    fill(#0D125F);
    rect(0, 0, width, height-200);
  }
  sun.animate();
  sun.glow();
  moon.animate();
  moon.glow();
  buil1.display();
  buil1.transition();
  buil2.display();
  buil2.transition();
  buil3.display();
  buil3.transition();
  buil4.display();
  buil4.transition();
  house.display();
  house.transition();
  if (daytime) {
    bird.display(.5);
    bird.move(3);
    babybird1.display(.25);
    babybird1.move(3);
    babybird2.display(.25);
    babybird2.move(3);
  }


  h1.display();
  h2.display();
  h3.display();
  h4.display();
  mp.display();
  mp.move();
}
