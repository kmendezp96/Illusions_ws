int illusions = 6;
int current = 1;
boolean active = true;

void setup() {
  size(700,700);
}

void draw() {
  background(255);
  fill(0);
  stroke(122);
  strokeWeight(4);  
  int altura= 70;
  int ancho= 40;
  for(int i = 0; i<height; i=i+altura){
    for(int j = 0; j<width; j=j+ancho*2){
        if(i%280==70 || i%280==210)
          rect(j+(ancho/3),i,ancho,altura);
        if(i%280==0)
          rect(j,i,ancho,altura);
        if(i%280==140)
          rect(j+(ancho/3*2),i,ancho,altura);
    }
    line(0,i,width,i);
  }
  
}