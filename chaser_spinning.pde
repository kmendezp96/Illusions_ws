float x1, y1, rad1;
int deg = 0;
int up = 121;

void setup(){
  size(640, 360);
  background(255);
  frameRate(12);
}
 
void draw(){
  noStroke();
  fill(0, 60);
  rect(0, 0, width, height);
  loading(50);
}
 
void loading(int r){
    deg = deg + up;
    rad1 = (PI/160)*deg;
    x1 = sin(rad1)*r + (width/2);
    y1 = cos(rad1)*r + (height/2);
    stroke(255, 100);
    fill(255);
    ellipse(x1, y1, r-20, r-20);
}