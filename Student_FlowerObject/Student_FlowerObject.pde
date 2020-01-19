Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;  // the second instance of the Flower class
Flower myFlower3;

void setup() {
  size(1600, 900);

  int _r1= 60;
  int _r2 = 100;
  int _r3 = 120;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  int offset = 350;


  myFlower1 = new Flower(_r1, _petals, _x, _y, _pc, random(-10,10),random(-10,10)); 
  myFlower2 = new Flower(_r2, _petals, _x+random(-500, 500), _y+offset, _pc, random(-10,10),random(-10,10));
  myFlower3 = new Flower(_r3, _petals, _x+50, _y-offset, _pc,random(-10,10),random(-10,10));
}

void draw() {
  background(#43AF76);

  myFlower1.overlap(myFlower2);
  myFlower1.overlap(myFlower3);
  myFlower2.overlap(myFlower1);
  myFlower2.overlap(myFlower3);
  myFlower3.overlap(myFlower1);
  myFlower3.overlap(myFlower2);
  
  myFlower1.display();
  myFlower1.move(); 
  myFlower1.bounce();
  
  myFlower2.display();
  myFlower2.move();
  myFlower2.bounce();

  
  myFlower3.display();
  myFlower3.move();
  myFlower3.bounce();



}
