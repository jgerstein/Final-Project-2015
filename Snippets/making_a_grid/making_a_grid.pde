//create an ArrayList. Can also be an array, if you don't need to add/remove
ArrayList<TheThing> gridOfThings = new ArrayList<TheThing>();

//how many rows and columns?
int rows = 5;
int columns = 10;

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
//for loops to take us through each column and row.
//for each column (x), we will access each row (y)
  for (int x = 0; x < columns; x++) {
    for (int y = 0; y < rows; y++) {
      //add a new TheThing to the grid. The location uses the width and the number of rows/columns to get even spacing
      gridOfThings.add(new TheThing((width/columns)*.5 + x * width/columns, 25 + y * 50));
    }
  }
}

void draw() {
  //Do whatever you need to do
  for (int i = 0; i < gridOfThings.size (); i++) {
    TheThing thing = gridOfThings.get(i);
    thing.display();
    thing.colorShift();
  }
}


