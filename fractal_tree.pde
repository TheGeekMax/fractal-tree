float nn = 0;
int co = 0;

void setup(){
  size(800,800);
}
void draw(){
  background(0);
  lines(400,800,200,-HALF_PI,nn);

  
  if(co <= 3600){
    //saveFrame("output/out_####.png");
    co++;
   // println(co);
  }
  
  nn += 0.01;
}

void lines(float x1,float y1, float d, float a, float n){
 stroke(255);
 strokeWeight(2);
 
 float x2 = d * cos(a) + x1;
 float y2 = d * sin(a) + y1;
 
 line(x1,y1,x2,y2);
 
 if(d > 2){
  lines(x2,y2,d/1.5,a+noise(n),n+1);
  lines(x2,y2,d/1.5,a-noise(n+100),n+1);
 }
}
