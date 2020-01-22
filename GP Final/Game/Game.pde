
void setup() {
  size (1000, 500);
  grid = new Bricks[bricks][brick_rows];
  myPlayer1 = new Player(p_middle, p_y, p_width, p_height, p_color, p_transparency);
  myBall1 =new ball(ballR, ballX, ballY, ball_color, xSpeed, ySpeed);
  myScore =new Scoreboard(score,scoreX,scoreY);
  sound1 =new SoundFile(this, "sound1.wav");

  for (int i = 0; i < bricks; i++) {
    for (int j = 0; j < brick_rows; j++) {
      grid[i][j] = new Bricks(i*brickSpacingX+offset, j*brickSpacingY, brick_width, brick_height);
    }
  }
}
void draw () {
  background (#959595);

  myPlayer1.display();
  myBall1.display();
  myBall1.move();
  myBall1.bounce();
  myBall1.p_bounce(myPlayer1);
  myScore.display();

  for (int i = 0; i < bricks; i++) {
    for (int j = 0; j < brick_rows; j++) {
      grid[i][j].display();
      myBall1.b_bounce(grid[i][j]);
    }
  }
  trailX[indexPos]=ballX;
  trailY[indexPos]=ballY;
  indexPos= (indexPos+1) % num;

  for (int i = 0; i < num; i++) {
    int pos = (indexPos + i) % num;
    float r = (ballR+i)/2;
    int transparency =150 -i*20;
    noStroke();
    fill(ball_color, transparency);
    ellipse(trailX[pos], trailY[pos], r, r);
  }
}
