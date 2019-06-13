PImage[] imgs = new PImage[3];
int curImg = 0;
PImage tower;

void setup() {
    size(640, 480);
    imgs[0] = loadImage("flor1.jpg");
    imgs[1] = loadImage("flor2.jpg");
    imgs[1].resize(width,height);
    imgs[0].resize(width,height);  
  
  tower= imgs[0].get(0,0,width,height);
  
   }
 
void draw() {
    background(imgs[1]);
  tower= imgs[0].get(0,0,width,height);
  
  //int dimension = tower.width * tower.height;
  //int mouse = mouseX;
  //int espesor = int (map(mouse, 0, displayWidth, 0, tower.width));
  int espesor = mouseX;
  tower.loadPixels();
  // int dimension = tower.width * tower.height;
  
  tower.loadPixels();
 for (int a = 0; a < tower.height; a++){   
  for (int i = 0; i < espesor; i ++) { 
    tower.pixels[i+a*tower.width] = imgs[1].pixels[i+a*tower.width]; 
    }
  } 
  tower.updatePixels();
 
  image(tower, 0, 0);
}
 
void mousePressed() {
}
