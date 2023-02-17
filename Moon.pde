class Moon extends Star{
  float theta = radians(360);
  float theta_velocity = 0.005;
  
  
  Moon(float radius, int r, int g, int b, float speed){
   super(radius,r,g,b,speed);
   
   
    
  }

  void animate(){
  
//similar translation to polar coordinate
  x=(height*0.5)*cos(theta);
   y = (height*0.5)*sin(theta);
  theta+=theta_velocity;
  if(theta>radians(540))
  theta = radians(180);
 
    // changing color of the moon
    if(theta >= radians(180) && theta <= radians(360)){
      if(theta > radians(180) && theta < radians(270))
        fill(color(r++,g++,b++));
      
       if(theta > radians(270) && theta < radians(360)){
         fill(r--,g--,b--);
         
         
       }
        
    ellipseMode(CENTER);
    ellipse(x,y,radius,radius);
    }
  
  }


}
    
