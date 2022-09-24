
float Vy1=6;
float Vy2=4;
float M1=20;
float M2=10;
float X =140;
float Y =190;
float Y1 =250;
float X1=150;
float E=0.2;
float d;
void setup() {
size(500,350);
}

void draw() {
   if(dist(X,Y,X,Y1)<=50){
    Vy1=-((M1-E*M2)*Vy1/(M1+M2))+((1+E)*M2*(-Vy2)/(M1+M2));
    Vy2=(1+E)*M1*Vy1/(M1+M2)+(M2-E*M1)*Vy2/(M1+M2);
  }
  if (Y < 0 || Y > height) {
    Vy1 *= -1;
  }
  if (Y1 < 0 || Y1 > height) {
    Vy2 *= -1;
  }
background(150);
ellipseMode(CENTER);
ellipse(X, Y, 60, 60);
ellipse(X1, Y1, 45, 45);
  Y += Vy1;
  Y1+=-Vy2;  
}
