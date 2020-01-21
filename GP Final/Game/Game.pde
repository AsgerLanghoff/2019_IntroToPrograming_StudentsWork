Player myPlayer1;

ball myBall1;

void setup() {
  size (1000, 500);
  
  myPlayer1 = new Player(p_middle,p_y,p_width,p_height,p_color,p_transparency);
  
  myBall1 =new ball(ballR,ballX,ballY,ball_color,xSpeed,ySpeed);
}

void draw () {
  background (#959595);
  
  myPlayer1.display();
  
  myBall1.display();
  myBall1.move();
  myBall1.bounce();
  myBall1.p_bounce(myPlayer1);
}
