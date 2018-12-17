void movePlayers(){
      if (moveRed){ 
      p1+=speed;
      moveRed = false;
    }
    if (moveBlu){ 
      p2+=speed;
      moveBlu =false;
    }
    if (moveGre){ 
      p3+=speed;
      moveGre = false;
    }
    if (moveYel){ 
      p4+=speed;
      moveYel = false;
    }    
    if (moveOra){
      p5+=speed;
      moveOra = false;
    }
    if (movePur){
      p6+=speed;
      movePur = false;
    }
}

void keyPressed() {
  setMove(key, false);
}
 
void keyReleased() {
  setMove(key, true);
}
 
void setMove(int k, boolean b) {
  if(k == CODED){
    switch (keyCode) {
      case UP:
        moveRed = b;
        break;
      case DOWN:
        moveBlu = b;
        break;
      case LEFT:
        moveGre = b;
        break;
      case RIGHT:
        moveYel = b;
        break;
    }
  } else {
    if(key == 'a' || key == 'A'){
      moveOra = b;
    } else if (key == 'b' || key == 'B'){
      movePur = b;
    }
  }
}
