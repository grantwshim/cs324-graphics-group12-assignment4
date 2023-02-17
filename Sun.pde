class Sun extends Star{
  float theta = radians(180);
  float theta_velocity = 0.005;
  int i = 0;
  float scale = 0.07;
  float incr;
  float decr;
  PShape beams;
 PShape beam1;
 PShape beam2;
 PShape beam3;
 PShape beam4;
 
    
  Sun(float radius, int r, int g, int b, float speed){
   super(radius,r,g,b,speed);
   

  }

  void animate(){
    
    //creating shape gorup for the beam structures
    beams = createShape(GROUP);
   beam1 = createShape(TRIANGLE, x-20,y,x+20,y,x,y-50);
 beam2 = createShape(TRIANGLE, x,y-20,x,y+20,x+50,y);
  beam3 = createShape(TRIANGLE, x-20,y,x+20,y,x,y+50);
  beam4 = createShape(TRIANGLE, x,y-20,x,y+20,x-50,y);
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
      //sun increase in scale as it rises, and decreases as it sets
    if(theta >= radians(180) && theta <= radians(270)){
    ellipseMode(CENTER);
    fill(color(r,g,b));
    ellipse(x,y,radius+incr,radius+incr);
    incr+=scale;
    decr+=scale;
    }
     if(theta > radians(270) && theta <= radians(360)){
     
    ellipseMode(CENTER);
    fill(color(r,g,b));
    ellipse(x,y,radius+decr,radius+decr);
    decr-=scale;
    incr-=scale;
    
    }
  }

}
    
    
  
  
  
  
  
  
  
  
  
  
