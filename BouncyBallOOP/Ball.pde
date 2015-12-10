class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;
  float speed;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 200;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(255), random(50), random(100, 255));
    vel = PVector.random2D();
    println("I just initialized a new object of the Ball class!");
    speed = 10;
  }
  Ball(float tSpeed) {
    diam = 200;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(255), random(50), random(100, 255));
    vel = PVector.random2D();
    println("I just initialized a new object of the Ball class!");
    speed = tSpeed;
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void move() {
    loc.add(vel);
  }
  void bounce() {
    loc.x += vel.x;
    loc.y += vel.y;
    loc.add(vel);
    //bounce ball if it hits walls
    if (loc.x + diam/2 >= width) {
      vel.x = -abs(vel.x);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (loc.x - diam/2 <= 0) {
      vel.x = abs(vel.x);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (loc.y + diam/2 >= height) {
      vel.y = -abs(vel.y);
    } else if (loc.y - diam/2 <= 0) {
      vel.y = abs(vel.y);
    }
  }
}