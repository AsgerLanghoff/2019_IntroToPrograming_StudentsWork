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
    ellipse(x, y, r, r);
  }
  void move() {

    x+=xSpeed;
    y+=ySpeed;
  }
  void bounce() {
    if (x>width-r) {
      xSpeed *= -1;
    }
    if (x<0+r) {
      xSpeed *= -1;
    }
    if (y<0+r) {
      ySpeed *= -1;
    }
    if (y>height-r) {
      ySpeed *= -1;
    }
  }
  void p_bounce(Player other) {
    println(other.x);
    println(other.y);
    if ( y >= other.y-other.p_height && x < other.x+other.p_width/2 && x > other.x-other.p_width/2) {
      ySpeed *= -1;
      xSpeed = (x - other.x)/10;
    }
  }
}
