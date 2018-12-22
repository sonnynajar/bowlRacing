void startMusic(){
  file = minim.loadFile("resources/" + theme + "/song.mp3");
  //file = new SoundFile(this, "resources/" + theme + "/song.mp3");
  //file = new SoundFile(this, "C:\\Users\\rodav\\Documents\\Processing\\bowlRacing\\resources\\" + theme + "\\song.mp3");
  //file.rewind();
  file.play();
  //file.rate(1.5);
}

void countdown(){
  count = minim.loadFile("resources/three.mp3");
  count.play();
  delay(1000);
  count = minim.loadFile("resources/two.mp3");
  count.play();
  delay(1000);
  count = minim.loadFile("resources/one.mp3");
  count.play();
  delay(1000);
  count = minim.loadFile("resources/go.mp3");
  count.play();
}
