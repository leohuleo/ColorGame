
void intro(){
  score = 0;
  time = 120;
  background(0);
  stroke(10);
  texts(400,400,130);
}
void texts(int x,int y,int size){
  textSize(size);
  textAlign(CENTER);
  text("Color Game",x,y);
}
