float Vx1=6;
float Vy1=3;
float Vx2=8;
float VY2=0;
float M1=20;
float M2=10;
float X =140;
float Y =190;
float X1=354;
float E=0.2;
float d;
void setup() {
size(500,350);
}

void draw() {
   
background(500);
ellipseMode(CENTER);
ellipse(X, Y, 60, 60);
  X += Vx1;
  Y += Vy1; 
 
  
  
  if (X < 0 || X > width) {
    Vx1 *= -1;
  }
  if (Y < 0 || Y > height) {
    Vy1 *= -1;
  }
}
