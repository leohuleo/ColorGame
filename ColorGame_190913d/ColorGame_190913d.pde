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
int score = 0;
int time = 120;
int highScore = 0;
boolean correct;
color[] colors = {red, orange, yellow, green, blue};
String[] words = {"Red", "Orange", "Yellow", "Green", "Blue"};
void setup() {
  size(800, 800);
  mode = intro;
}
void draw() {
  if (mode == intro) {
    intro();
  } else if (mode ==  game) {
    game();
    time--;
    println(time);
    if (time == 0) {
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
    time = 120;
    if (randomWords == randomColors) {
      correct = true;
      println("correct");
    } else {
      correct = false;
      println("incorrect");
    }
    if (correct && mouseX > 400 || !correct && mouseX < 400) {
      mode = gameOver;
      if(score > highScore){
        highScore = score;
      }
    }
    score++;
    coin = int(random(0, 2));
    if (coin == 1) {
      randomWords = int(random(0, 5));
      randomColors = randomWords;
    } else {
      randomWords = int(random(0, 5));
      while (randomColors == randomWords) {
        randomColors = int(random(0, 5));
      }
    }
  }else if(mode == gameOver){
    mode = intro;
  }
  
}
