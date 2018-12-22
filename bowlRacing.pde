import ddf.minim.*;
import processing.sound.*;

PImage bg, pRed, pBlu, pGre, pYel, pOra, pPur;
int p1,p2,p3,p4,p5,p6,speed,s,winner, totalPlayers;
boolean moveRed, moveBlu, moveGre, moveYel, moveOra, movePur, isRunning; 
String runningTime, finalTime, folder, theme;
StopWatchTimer sw;
Minim minim;
//SoundFile file;
AudioPlayer count, file;

void setup() {
  size(800,600);
  //fullScreen();
  minim = new Minim(this);
  
  totalPlayers = 3;
  theme = "xmas";
  s = width/200;
  
  loadImages();
  resizeImages(totalPlayers);
  createGrid(totalPlayers);
  placeRacers(totalPlayers);
  background(bg);

  
  speed = s;
  runningTime = "";
  resetVariables();
}

void draw() {
  background(bg);
  createGrid(totalPlayers);
  placeRacers(totalPlayers);
  currentTime();
  raceOver(!isRunning, winner);
  
  if (keyPressed == true){
    if (key == 's'){
      countdown();
      speed = s;
      isRunning = true;
      sw = new StopWatchTimer();  
      sw.start();
      startMusic();
    } else if (key == 'r'){
        resetVariables();
    }
  }
  
  if(isRunning){    
    movePlayers();    
    checkWinner();
  }
}
