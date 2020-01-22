class Player {

  int x;
  int y;
  int p_height;
  int p_width;
  int p_color;
  int p_transparency;

  Player(int temp_x, int temp_y, int temp_width, int temp_height, int temp_color, int temp_transparency) {
    x=temp_x;
    y=temp_y;
    p_height=temp_height;
    p_width=temp_width;
    p_color=temp_color;
    p_transparency=temp_transparency;
  }

  void display() {

    fill(p_color);
    rectMode(CENTER);
    x = mouseX;
    rect(x, y, p_width, p_height, p_transparency);
  }
}
class ball {

  int x;
  int y;
  int r;
  float xSpeed;
  float ySpeed;
  int ballColor;

  ball(int temp_r, int temp_x, int temp_y, int temp_ballColor, float temp_xSpeed, float temp_ySpeed) {
    r=temp_r;
    x=temp_x;
    y=temp_y;
    ballColor=temp_ballColor;
    xSpeed=temp_xSpeed;
    ySpeed=temp_ySpeed;
  }
  void display() {

    fill(ballColor);
    ellipseMode(RADIUS);
    ellipse(ballX, ballY, r, r);
  }
  void move() {

    ballX+=xSpeed;
    ballY+=ySpeed;
  }
  void bounce() {
    if (ballX>width-r) {
      xSpeed *= -1;
    }
    if (ballX<0+r) {
      xSpeed *= -1;
    }
    if (ballY<0+r) {
      ySpeed *= -1;
    }
    if (ballY>height-r) {
      ySpeed *= -1;
    }
  }
  void p_bounce(Player other) {
    //   println(other.x);
    // println(other.y);
    if ( ballY >= other.y-other.p_height && ballX < other.x+other.p_width/2 && ballX > other.x-other.p_width/2) {
      ySpeed *= -1;
      xSpeed = (ballX - other.x)/10;
    }
  }
  void b_bounce(Bricks other) {
    if (ballY-r <= other.b_y+other.b_h && ballX >= other.b_x && ballX <= other.b_x+other.b_w) {
      println("collide");
      ySpeed *= -1;
      other.b_dead=true;
      other.b_x=deadspace;
      other.b_y=deadspace;
    }
    /*if (ballY+r >= other.b_y && ballX < other.b_x+other.b_w && ballX > other.b_x) {
     println("collide");
     ySpeed *= -1;
     other.b_dead=true;
     }
     if ( ballX-r <= other.b_x+other.b_w && ballY <= other.b_y+other.b_h && ballY >= other.b_y) {
     println("collide");
     xSpeed *= -1;
     other.b_dead=true;
     }
     */    if ( ballX+r >= other.b_x+other.b_w && ballY >= other.b_y+other.b_h && ballY <= other.b_y) {
      println("collide");
      xSpeed *= -1;
      other.b_dead=true;
      other.b_x=deadspace;
      other.b_y=deadspace;
    }
  }
}

class Bricks {

  float b_x, b_y;
  float b_w, b_h;
  boolean b_dead;

  Bricks(float tempX, float tempY, float tempW, float tempH) {
    b_x = tempX;
    b_y = tempY;
    b_w = tempW;
    b_h = tempH;
  }

  void display () {
    if (!b_dead) {
      fill(255);
      rectMode(CORNER);
      rect(b_x, b_y, b_w, b_h);
    }
  }
}
class Scoreboard {
  
}
