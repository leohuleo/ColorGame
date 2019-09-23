//random float point number not including the upper limit
//color pallets;
int mode;
final int intro = 0;
final int game = 1;
final int gameOver = 2;
color red = #DF151A;
color orange = #FD8603;
color yellow = #F4F328;
color green = #00DA3C;
color blue = #00CBE7;
int randomWords = int(random(0, 5));
int randomColors = int(random(0, 5));
int coin = -1;
int score = 1;
int time = 100;
int highScore = 0;
boolean correct;
color[] colors = {red, orange, yellow, green, blue};
String[] words = {"Red", "Orange", "Yellow", "Green", "Blue"};
void setup() {
  PFont font = createFont("GoldUnderMud.ttf",20);
    textFont(font);
  size(800, 800);
  mode = intro;
}
void draw() {
  if (mode == intro) {
    intro();
  } else if (mode ==  game) {
    game();
    time--;
    if (time == 0) {
      if (score > highScore) {
        highScore = score;
      }
      mode = gameOver;
    }
  } else if (mode == gameOver) {
    gameOver();
  }
}

void mouseReleased() {
  if (mode ==intro) {
    mode = game;
  } else if (mode == game) {
    time = 100;
    if (randomWords == randomColors) {
      correct = true;
      println("correct");
    } else {
      correct = false;
      println("incorrect");
    }
    if (correct && mouseX > 400 || !correct && mouseX < 400) {
      if (score > highScore) {
        highScore = score;
      }
      mode = gameOver;
    } else {
      score++;
      generatePuzzle();
    }
  } else if (mode == gameOver) {
    mode = intro;
  }
}
