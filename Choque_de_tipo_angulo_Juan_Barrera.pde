float Vn1=0;
float Vn2=0;
float Vn3=0;
float Vn4=0;


float E=0.2;

float Vx1=3;
float Vy1=2.5;

float M1=10;
float M2=10;

float Vx2=3.5;
float Vy2=2.5;

float X=390;
float Y=290;

float Y1=20;
float X1=20;

float D;

float VP=0;


float VS1=0;
float VS2=0;
float VS3=0;

void setup() {
size(500,350);
}

void draw() {

  if(dist(X1,Y1,X,Y)<=25){
   VP=Vx1*cos(45)+Vy1*sin(45);
   VS1=Vx1*sin(45)+Vy1*cos(45);
   VS2=Vx2*cos(45)+Vy2*sin(45);
   Vn3=Vx2*sin(45)+Vy2*cos(45);
   VS3=(1+E)*M1*VP/(M1+M2)+(M2-E*M1)*VS2/(M1+M2);
   VS1=(M1-E*M2)*VP/(M1+M2)+(1+E)*M2*VS2/(M1+M2);
   Vn2=Vx2*sin(45)+Vy2*cos(45);
   Vx1=VS1*cos(45)-Vn2*sin(45);
   Vy1=VS1*sin(45)+Vn2*cos(45);
   Vy2=VS3*sin(45)+Vn3*cos(45);
   Vx2=VS3*cos(45)+Vn3*sin(45);
   Vx1=-Vx1;
   Vy1=-Vy1;
   Vx2=-Vx2;
   Vy2=-Vy2;
  }
  if (X < 0 || X > width) {
    Vx1 *= -1;
  }
  if (X1 < 0 || X1 > width) {
    Vx2 *= -1;
  }
    if (Y < 0 || Y > height) {
    Vy1 *= -1;
  }
  if (Y1 < 0 || Y1 > height) {
    Vy2 *= -1;
  } 
  
  background(600);
ellipseMode(CENTER);
ellipse(X, Y, 60, 60);
ellipse(X1, Y1, 50, 50);
  X += Vx1;
  X1+=-Vx2;
  Y+=Vy1;
  Y1+=-Vy2;
}
