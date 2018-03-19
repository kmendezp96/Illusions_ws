void setup(){
 size(600,600,P2D);
 frameRate(60);
}
int i=0;
float pi = 3.1415926535;
void draw(){
  background(0);
 //background(i%255);
 noFill();
 translate(width/2, height/2);
 rotate(i*0.03);  
 for(float j = 0; j < pi*2; j=j+pi/8) {  
   stroke(255);
   strokeWeight(5);
   rotate(j);    
   beginShape();
   vertex(3,15);
   bezierVertex(-7, 33, -23, 38, -68, 28);
   endShape();
   stroke(155);
   strokeWeight(20);
   beginShape();
   vertex(169,-92);
   bezierVertex(245,-53, 296,13, 344,134);
   endShape();
   
 }
 rotate(i*0.03*-2);
 for(float j = 0; j < pi*2; j=j+pi/8) {
   stroke(205);
   strokeWeight(10);
   rotate(j);
   beginShape();
   vertex(-68, 28);
   bezierVertex(-81,67, -61,136, -17,187);
   endShape();
 }
 i=i+1;
}