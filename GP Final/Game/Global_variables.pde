import processing.sound.*;

int p_width =200;
int p_height =25;
int p_y=450;
int p_color =#000000;
int p_transparency=0;
float xSpeed =10;
float ySpeed =10;
int ballX = 500;
int ballY = 250;
int ballR =15;
int ball_color=#FFFFFF;
int p_middle=mouseX;
int brick_width=150;
int brick_height=25;

int brick_rows=4;
int bricks=5;
int brickSpacingX =175;
int brickSpacingY =40;
int offset = 55;

float deadspace = -100;

int score;
int scoreX=500;
int scoreY=250;

int num = 10;
int [] trailX = new int [num];
int [] trailY = new int [num];
int indexPos = 0;

SoundFile sound1;

Player myPlayer1;
Scoreboard myScore;
ball myBall1;

Bricks [] [] grid;
