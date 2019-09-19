void game(){
  background(0);
  fill(255);
  rect(0,0,400,800);
  textAlign(CENTER,CENTER);
  fill(colors[randomColors]);
  text(words[randomWords],400,400);
  fill(200);
  text(score,400,600);
  fill(0);
  text("True",200,100);
  fill(255);
  text("False",600,100);
}
