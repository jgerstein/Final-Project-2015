//////////// Jumping Character Example ////////////
///////////////////////////////////////////////////
//  When a key is pressed, character jumps. The  //
//  jump should continue until the character is  //
//  in contact with a surface. For this example  //
//  the surface in question will be the bottom   //
//  of the Processing display window.            //
///////////////////////////////////////////////////

//We need some variables

PVector loc, vel, acc;
int sz = 30;
boolean jumping = false;    //this variable lets us determine if our character is jumping

void setup() {
  size(800, 600);
  loc = new PVector(width/2, height - sz/2);
  vel = new PVector(0, 0);
  acc = new PVector(0, 0);
}

void draw() {
  background(0);
  
  //always add the motion
  vel.add(acc);
  loc.add(vel);

  //if the character touches the ground, rest character on the floor and set acc.y and vel.y back to 0
  if (jumping && loc.y + sz/2 >= height) {
    loc.y = height - sz/2;
    vel.y = 0;
    acc.y = 0;
    jumping = false;
  }

  //display the circle
  ellipse(loc.x, loc.y, sz, sz);
}

void keyPressed() {
  //when a key is pressed, we set vel.y and acc.y so the character can jump
  if (!jumping) {
    vel.y = -8;
    acc.y = .1;
    jumping = true;
  }
}

