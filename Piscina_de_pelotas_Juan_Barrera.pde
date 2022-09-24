
float[] VX={5,6,5,6,5};
float[] VY={6,5,6,5,6};

float[] Vp1=new float[8];
float[] Vn1=new float[8];


float[] X={60,125,225,325,375};
float[] Y={350,100,200,100,350};

float[] VPP1=new float[8];

float[] Ma={10,5,10,5,10};

float E=0.2;
int I=0;
int W=0;
void setup() {
size(500,350);
}

void draw() {
background(600);
ellipseMode(CENTER);
if(I==5)
{ I=0;}
W=I;
for(int H=0;H<5;H++)
{
ellipse(X[H],Y[H],40,40);
}
X[0]+=VX[0];
Y[0]+=VY[0];

X[1]+=VX[1];
Y[1]+=VY[1];

Y[2]+=VX[2];
Y[2]+=VY[2];

X[3]+=VX[3];
Y[3]+=VY[3];

X[4]+=VX[4];
Y[4]+=VY[4];

 for(int j=1;j<5;j++)
  {
    if(dist(X[I],Y[I],X[j],Y[j])<=2)
    {
      if(j!=W)
      {
       Vp1[I]=VX[I]*cos(45)+VY[I]*sin(45);
       Vn1[I]=VX[I]*sin(45)+VY[I]*cos(45);
       Vp1[j]=VX[j]*cos(45)+VY[j]*sin(45);
       Vn1[j]=VX[j]*sin(45)+VY[j]*cos(45);
       VPP1[j]=(1+E)*Ma[I]*Vp1[I]/(Ma[j]+Ma[I])+(Ma[j]-E*Ma[I])*Vp1[j]/(Ma[I]+Ma[j]);
       VPP1[I]=(Ma[I]-E*Ma[j])*Vp1[I]/(Ma[I]+Ma[j])+(1+E)*Ma[j]*Vp1[j]/(Ma[I]+Ma[j]);
       VX[I]=-(VPP1[I]*cos(45)-Vn1[I]*sin(45));
       VY[I]=-(VPP1[I]*sin(45)+Vn1[I]*cos(45));
       VY[j]=-(VPP1[j]*sin(45)+VPP1[j]*cos(45));
       VX[j]=-(VPP1[j]*cos(45)+VPP1[j]*sin(45));
      }
    }
  }
for(int k=0;k<5;k++)
{
  if (X[k] < 0 || X[k] > width) {
    VX[k] *= -1;
  }
    if (Y[k] < 0 || Y[k] > height) {
    VY[k] *= -1;
  }
}
I++;
}
