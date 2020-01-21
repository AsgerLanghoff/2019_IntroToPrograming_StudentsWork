int p_width =200;
int p_height =25;
int p_y=450;
int p_color =#000000;
int p_transparency=0;
float xSpeed =2;
float ySpeed =2;
int ballX =500;
int ballY =250;
int ballR =15;
int ball_color=#FFFFFF;

Player myPlayer1;

ball myBall1;

void setup() {
  size (1000, 500);
  
  myPlayer1 = new Player(mouseX,p_y,p_width,p_height,p_color,p_transparency);
  
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
