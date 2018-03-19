void setup(){
  size(400, 400, P3D);
}

void necker_cube(float siz, float cx, float cy, int up){
  // initial conditions
  float ax, ay, bx, by, dx, dy, ex, ey, fx, fy, gx, gy;
  float sizh = siz; float sizx = siz*sqrt(3)/2; float sizy = siz/2; 
  
  // points
  ax = cx-sizx; ay = cy-sizy; // point a
  ex = cx+sizx; ey = cy-sizy; // point e
  gx = ax+sizx; gy = ay-sizy; // point g
  dx = cx;      dy = cy+sizh; // point d
  bx = cx-sizx; by = dy-sizy; // point b
  fx = cx+sizx; fy = dy-sizy; // point f
  
  // lines
  stroke(85);
  line(cx, cy, ax, ay); // line c-a
  line(cx, cy, ex, ey); // line c-e
  line(ax, ay, gx, gy); // line a-g
  line(ex, ey, gx, gy); // line e-g
  line(cx, cy, dx, dy); // line c-d
  line(dx, dy, bx, by); // line d-b
  line(dx, dy, fx, fy); // line d-f
  line(ax, ay, bx, by); // line a-b
  line(ex, ey, fx, fy); // line e-f
  
  // square 1 - up
  PShape s1;
  s1 = createShape();
  s1.beginShape();
  s1.fill(255, 255, 255);
  s1.noStroke();
  s1.vertex(ax, ay);
  s1.vertex(gx, gy);
  s1.vertex(ex, ey);
  s1.vertex(cx, cy);
  s1.endShape(CLOSE);
  shape(s1, 0, 0);
  
  // arrow
  float px, py;
  px = (ex+ax)/2;
  py = (ey+ay)/2;
  stroke(255, 0, 0);
  float arrow, tr;
  if(up==0){
    arrow = siz;
    tr = 5;
  }
  else{
    arrow = -siz;
    tr = -5;
  }
  line(px, py, px, py+arrow);
  fill(255, 0, 0);
  triangle(px, py, px-tr, py+tr, px+tr, py+tr);
  
  // square 2 - left
  PShape s2;
  s2 = createShape();
  s2.beginShape();
  s2.fill(85, 85, 85);
  s2.noStroke();
  s2.vertex(ax, ay);
  s2.vertex(cx, cy);
  s2.vertex(dx, dy);
  s2.vertex(bx, by);
  s2.endShape(CLOSE);
  shape(s2, 0, 0);
  
  // square 3 - right
  PShape s3;
  s3 = createShape();
  s3.beginShape();
  s3.fill(170, 170, 170);
  s3.noStroke();
  s3.vertex(cx, cy);
  s3.vertex(ex, ey);
  s3.vertex(fx, fy);
  s3.vertex(dx, dy);
  s3.endShape(CLOSE);
  shape(s3, 0, 0);
}

int up;
void draw(){
  background(0);
  lights();
  noStroke();
  pushMatrix();
  int siz = 30;
  float r = sqrt(3);
  float x, y = 100, dx = r*siz, dy = 2*siz;
  for(float j=0; j<5; j++){
    if(j%2==1) {x = 220-(r*siz/2)*(j+1);}
    else {x = 220-(r*siz/2)*(j+1);}
    for(int i=0; i<j+1; i++){
      necker_cube(siz, x, y, up);
      x += dx;
    }
    y += 0.76*dy;
  }
  popMatrix();
}

void mouseClicked() {
  if (up == 0) {
    up = 1;
  } else {
    up = 0;
  }
}