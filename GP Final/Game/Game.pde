Player myPlayer1;

ball myBall1;

void setup() {
  size (1000, 500);

  grid = new Bricks[bricks][brick_rows];

  myPlayer1 = new Player(p_middle, p_y, p_width, p_height, p_color, p_transparency);

  myBall1 =new ball(ballR, ballX, ballY, ball_color, xSpeed, ySpeed);

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
    
    for (int i = 0; i < bricks; i++) {
    for (int j = 0; j < brick_rows; j++) {
      // Oscillate and display each object
      grid[i][j].display();
      myBall1.b_bounce(grid[i][j]);
    }
  }
}
