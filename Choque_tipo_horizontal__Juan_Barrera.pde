
float Vx1=6;
float Vy1=0;
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
   if(dist(X1,200,X,200)<=50){
    Vx1=-((M1-E*M2)*Vx1/(M1+M2))+((1+E)*M2*(-Vx2)/(M1+M2));
    Vx2=(1+E)*M1*Vx1/(M1+M2)+(M2-E*M1)*Vx2/(M1+M2);
  }
  if (X < 0 || X > width) {
    Vx1 *= -1;
  }
  if (X1 < 0 || X1 > width) {
    Vx2 *= -1;
  }
background(150);
ellipseMode(CENTER);
ellipse(X, Y, 60, 60);
ellipse(X1, Y, 45, 45);
  X += Vx1;
  X1+=-Vx2;  
}
