boolean active = true;
int p1_longitud=80;            //longitud del lado del cuadrado
int p1_pos=p1_longitud/2;      //posicion en y del cuadrado
int p1_estado=0;   

void setup() {
  size(700,700);
}

void draw() {
  background(255);
  if (p1_pos>=height-p1_longitud/2) 
    p1_estado=1;
  if (p1_pos==p1_longitud/2) 
    p1_estado=0;
  if (p1_estado==0)
    p1_pos++;
  else 
    p1_pos--;
    
  rectMode(CORNER);
  noStroke();
  fill(0);
  //FILAS NEGRAS MIENTRAS NO SE OPRIMA a
  if(active == true)
    for (int y=0; y<height; y=y+40) 
      rect(0, y, width, 20);
   
  //CUADRADOS
  rectMode(CENTER);

  fill(0, 0, 125);
  rect(width/5*2, p1_pos, p1_longitud, p1_longitud);
  rect(width/5*4, p1_pos, p1_longitud, p1_longitud);

  fill(255, 255, 125);
  rect(width/5, p1_pos, p1_longitud, p1_longitud);
  rect(width/5*3, p1_pos, p1_longitud, p1_longitud);  
}

void keyPressed() {
  if (key == 'a'){
    active = !active;
  }   
}