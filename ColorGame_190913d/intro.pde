
void intro() {
  score = 0;
  time = 80;
  overScreen = 0;
  background(0);
  animation.display(-125, -150);
  texts(400, 600, 130);
  if (rate == 2) {
    rate = 0;
  } else {
    rate++;
  }
}
void texts(int x, int y, int size) {
  textSize(size);
  textAlign(CENTER);
  text("Color Game", x, y);
}

class Animation {
  PImage[] sequence;
  int imageCount;
  int frame;
  Animation(String imagePrefix, int count) {
    imageCount = count;
    sequence = new PImage[imageCount];
    for (int i = 0; i<imageCount; i++) {
      String filename = imagePrefix + nf(i + 1, 4) + ".gif";
      sequence[i] = loadImage(filename);
    }
  }
  void display(int x, int y) {
    if(rate == 2){
    frame = (frame + 1) % imageCount;
    }
    image(sequence[frame], x, y);
  };
}
