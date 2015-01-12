///////////////////////////////////////////////////////////////////
// This example demonstrates how you might rotate something, and //
// it includes the ability to control rotation of that object.   //
///////////////////////////////////////////////////////////////////

Thing t, u;
void setup() {
  imageMode(CENTER);
  size(800, 600);
  t = new Thing(width/4, height/2);
  u = new Thing(3*width/4, height/2);
}

void draw() {
  background(255);
  t.display();
  t.changeAngle();
  u.display();
  u.changeAngle();
}

class Thing {
  PImage img;
  float theta;
  PVector loc;

  Thing(float x, float y) {
    loc = new PVector(x, y);
    theta = 0;
    img = loadImage("smashing.jpg");
  }

  void display() {
    pushMatrix();              //creates a temporary coordinate system
    translate(loc.x, loc.y);   //translation moves the origin to the specified point
    rotate(theta);             //rotation rotates by a specified number of radians
    image(img, 0, 0);          //draw the image at 0,0
    popMatrix();               //exits the temporary coordinate system
  }

  void changeAngle() {
    if (keyPressed) {

      if (keyCode == LEFT) {
        theta-=radians(1);
      } else if (keyCode == RIGHT) {
        theta += radians(1);
      }
    }
  }
}

