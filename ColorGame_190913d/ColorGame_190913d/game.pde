void game(){
  background(0);
  fill(255);
  rect(0,0,400,800);
  textAlign(CENTER,CENTER);
  fill(colors[randomColors]);
  text(words[randomWords],400,400);
  timer(time);
  noStroke();
  fill(200);
  text(score,400,600);
  fill(0);
  text("True",200,100);
  fill(255);
  text("False",600,100);
}

void generatePuzzle(){
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
}

void timer(int time){ 
  noFill();
  stroke(#4F4F4F);
  strokeWeight(6);
  arc(400,615,200,200,0.5*PI,2.5*PI*time/100,OPEN);
}
