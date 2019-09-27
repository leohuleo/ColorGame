void gameOver() {
  fill(0,overScreen);
  rect(0,0,800,800);
  textAlign(CENTER, CENTER);
  fill(255,overScreen*2.55);
  text("Game Over", 400, 250);
  text("Highest Score:", 400, 350);
  text(highScore, 400, 400);
  textSize(40);
  text("Your Score:", 400, 500);
  text(score, 400, 550);
  if(overScreen < 100){
    overScreen++;
  }
}
