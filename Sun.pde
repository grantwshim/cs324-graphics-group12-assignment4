class Sun extends Star{
  float theta = radians(180);
  float theta_velocity = 0.005;
  int i = 0;
  
  Sun(float radius, int r, int g, int b, float speed){
   super(radius,r,g,b,speed);
    
  }

  void animate(){
    
    //creating shape gorup for the beam structures
 PShape beams = createShape(GROUP);
 PShape beam1 = createShape(TRIANGLE, x-20,y,x+20,y,x,y-45);
  PShape beam2 = createShape(TRIANGLE, x,y-20,x,y+20,x+45,y);
  PShape beam3 = createShape(TRIANGLE, x-20,y,x+20,y,x,y+45);
  PShape beam4 = createShape(TRIANGLE, x,y-20,x,y+20,x-45,y);
    beams.addChild(beam1);
    beams.addChild(beam2);
    beams.addChild(beam3);
    beams.addChild(beam4);
    //adjusting the position of the sun group
translate(width/2,height/2);
  x=(height*0.5)*cos(theta);
   y = (height*0.5)*sin(theta);
  theta+=theta_velocity;
  if(theta>radians(540))
  theta = radians(180);
 

    //twinkling for the beams
    if(theta >radians(220) && theta< radians(320)){
       strokeWeight(0);
        i++;
        if(i%5==0){
          print(i);
          fill(color(r,g,b));
         shape(beams);
      }

    }
    //drawing the sun only at certain radian ranges
    if(theta >= radians(180) && theta <= radians(360)){
    ellipseMode(CENTER);
    fill(color(r,g,b));
    ellipse(x,y,radius,radius);
    }
  }

}
    
  
  
  
  
  
  
  
  
  
  
