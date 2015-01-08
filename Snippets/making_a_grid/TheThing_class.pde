/****************************************************
This class is just here because I needed something.
It is a simple class. If you are confused by it,
you may want to come see me for help.
****************************************************/

class TheThing {

  PVector loc;
  float sz;
  float hue;


  TheThing(float x, float y) {
    loc = new PVector(x, y);
    sz = 25;
    hue = random(360);
  }

  void display() {
    fill(hue, 100, 100, 100);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void colorShift() {
    hue++;
    if (hue > 360) {
      hue = 0;
    }
  }
}

