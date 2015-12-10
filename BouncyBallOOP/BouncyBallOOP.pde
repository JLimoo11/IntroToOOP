Ball b;
Ball c;
//declare a new ball called b

void setup() {
  size(800, 600);
  b = new Ball();      //initialize b as a new object of the Ball class
  c = new Ball();      //initialize c as a new object of the Ball class
}

void draw() {
  background(0);
  b.display();         //call b's display() method
  c.display();         //call c's display() method
  b.move();            //b moves
  c.move();            //c moves
  b.bounce();          //b bounces off the walls
  c.bounce();          //c bounces off the walls
}