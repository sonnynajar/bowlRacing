void loadImages(){
  bg = loadImage("resources/" + theme + "/bg.jpg");
  pRed = loadImage("resources/" + theme + "/red.png"); //up
  pBlu = loadImage("resources/" + theme + "/blue.png"); //down
  pGre = loadImage("resources/" + theme + "/green.png"); //left
  pYel = loadImage("resources/" + theme + "/yellow.png"); //right
  pOra = loadImage("resources/" + theme + "/orange.png"); //aA
  pPur = loadImage("resources/" + theme + "/purple.png"); //bB
}

void resizeImages(int p){
  bg.resize(width,height);
  pRed.resize(height/p,height/p);
  pBlu.resize(height/p,height/p);
  pGre.resize(height/p,height/p);
  pYel.resize(height/p,height/p);
  pOra.resize(height/p,height/p);
  pPur.resize(height/p,height/p);
}

void createGrid(int p){
  stroke(255);
  strokeWeight(5);
  
  for(int i = 2; i <= p; i++){
    line(0,(i-1)*height/p,width,(i-1)*height/p);
  }
}

void placeRacers(int p){
  PImage[] images = {pRed,pBlu,pGre,pYel,pOra,pPur};
  int[] pos = {p1,p2,p3,p4,p5,p6};
  for(int i = 0; i < p; i++){
   image(images[i],pos[i],i*height/p); 
  }
}
