void raceOver(boolean isOver, int winner){
  String[] colorText = {"Red","Blue","Green","Yellow","Orange","Purple"};
  color[] fontColor = {color(255,0,0),color(0,0,255),color(0,255,0),
                       color(255,255,0),color(255,165,0),color(128,0,128)};
  
  textSize(width/10);
  textAlign(CENTER, CENTER);
  
  if(winner != 0 && isOver){
    fill(fontColor[winner-1]);
    text(colorText[winner-1] + " Wins!\n" + finalTime, width/2, height/2);
  } else {
    text("", width/2, height/2);
  }
}

void checkWinner(){
  int[] imgPos = {p1,p2,p3,p4,p5,p6};
  
  for(int i = 1; i <= totalPlayers; i++){
    if (imgPos[i-1] >= width - height/totalPlayers){
      speed = 0;
      isRunning = false;
      sw.stop();
      file.pause();
      winner = i;
    }
  }
}
