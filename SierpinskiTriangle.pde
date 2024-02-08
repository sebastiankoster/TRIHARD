void setup(){
size(1000,1000);
strokeWeight(0.1);
noLoop();}
void draw(){
float distance;
for(int x = 0; x<1001; x++){
for(int y= 0 ; y<1001; y++){
distance = sqrt(x*x+y*y);
strokeWeight(0);
fill(101 + 0.10536*distance , 232 - 0.10607*distance , 145-0.06859*distance);
ellipse(x,y,1,1);}
} 
strokeWeight(0.2);
noFill();
triHARD(1000,500,0);
}

public void triHARD(int h, int posx, int posy){
if (h<=2);
else{
triangle(posx,posy,posx+0.5*h,posy+h,posx-0.5*h,posy+h);
triHARD(h/2, posx-h/4,posy+h/2);
triHARD(h/2, posx, posy);
triHARD(h/2, posx+h/4,posy+h/2);
}
}








