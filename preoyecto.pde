PImage img;
PImage fondo;

PShape barco;
PShape remero1;
PShape coco;
PShape coci;
PShape planeta;
PShape planeta1;
PShape cometa;
PShape sol;
PShape remi;


void setup() {
  size(840, 700, P3D);
  fill(204);
  

    barco = loadShape("barco.obj");
    remero1 = loadShape("remero1.obj");
    coco = loadShape("coco.obj");
    coci = loadShape("coco.obj");
    planeta = loadShape("planeta02.obj");
    planeta1 = loadShape("planeta.obj");
    cometa = loadShape("cometa.obj");
    sol = loadShape("sol.obj");
    remi = loadShape("remolino.obj");
  barco.scale(140);
  remero1.scale(150);
  coco.scale(150);
  coci.scale(100);
  planeta.scale(30);
  planeta1.scale(27);
  cometa.scale(20);
  sol.scale(20);
  remi.scale(100);
  
   img = loadImage("mar.png");
   fondo = loadImage("fondo.jpg");

 
}

void draw() {
  
  
  background(0,0,13);

 
  
  // Change height of the camera with mouseY
  camera(mouseY, mouseY, mouseY, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         2.0, 2.0, 0.0); // upX, upY, upZ
pushMatrix();
rotate(radians(-45));
scale(0.5);
image(img, -3050, -300);
popMatrix();

pushMatrix();
rotateX(radians(90));
rotate(radians(180));
rotateY(radians(-135));
 translate(0,0,-300);
 scale(0.5);
image(fondo, -3100, -1600);
popMatrix();


  float t = millis()/1000.0;
    float r = 5 * cos(2*PI*t);
  float n = millis()/2000.0;
    float f = 521 * cos(2*PI*n);
    


  pushMatrix();
   rotateX(radians(90));
   rotateY(radians(-40));
    translate(-50,r,50);   
    scale(0.5);
    shape(barco,0,-60);
  popMatrix();
  
    pushMatrix();
   rotateX(radians(90));
   rotateY(radians(-40));
    translate(-50,r,-130);   
    scale(0.5);
    shape(remero1);
  popMatrix();
  
   pushMatrix();
   rotateX(radians(90));
   rotateY(radians(-40));
    translate(-40,r,r);   
    scale(0.5);
    shape(coco,0,30);
    shape(coco,-120,30);
    shape(coco,-320,30);
  popMatrix();
  
  pushMatrix();
   rotateX(radians(90));
   rotateY(radians(-40));
    translate(-40,r,r);   
    scale(0.5);
    shape(coci,-115,30);
    shape(coci,-310,30);
  popMatrix();
  
    pushMatrix();
    rotateX(radians(90));
    planeta.rotateY(radians(1));
    translate(-153,262,200);   
    scale(0.6);
    shape(planeta);
    popMatrix();
    
    pushMatrix();
    rotateX(radians(90));
    planeta1.rotateY(radians(1));
    translate(-279,245,45);   
    shape(planeta1);
    popMatrix();
    
       pushMatrix();
   rotateX(radians(90));
   cometa.rotateY(radians(1));
   translate(-153,f,90);   
    shape(cometa,-40,290);
     
    popMatrix();
    
     pushMatrix();
    rotateX(radians(90));
    sol.rotateY(radians(1));
    translate(-279,190,-75);   
    shape(sol);
    popMatrix();
    
     pushMatrix();
    rotateX(radians(90));
    remi.rotateY(radians(1));
    translate(-300,-90,-310);   
    shape(remi);
    popMatrix();
    
  lights();
  

}
