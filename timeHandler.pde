void currentTime() {
  fill(255);
  textSize(width/10);
  textAlign(CENTER,CENTER);
  
  if(isRunning){
    runningTime = nf(sw.minute(), 2)+":"+nf(sw.second(), 2)+":"+nf(sw.hundrensec(), 2);
    finalTime = runningTime;
  } else {
    runningTime = "";
  }
  text(runningTime, width/2, 2*height/4 - 50);
}


class StopWatchTimer {
  int startTime = 0, stopTime = 0;
  boolean running = false;  
    
    void start() {
        startTime = millis();
        running = true;
    }
    void stop() {
      if(isRunning){
        stopTime = millis();
        running = false;
      }
    }
    int getElapsedTime() {
        int elapsed;
        if (running) {
             elapsed = (millis() - startTime);
        }
        else {
            elapsed = (stopTime - startTime);
        }
        return elapsed;
    }
    int hundrensec(){
      return (getElapsedTime() / 10) % 100; 
    } 
    int second(){
      return (getElapsedTime() / 1000) % 60;
    }
    int minute() {
      return (getElapsedTime() / (1000*60)) % 60;
    }
} 
