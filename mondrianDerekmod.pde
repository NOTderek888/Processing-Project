/*

 sketch_3_mondrian
 
 Piet Mondrian is going through a "vertical rectangles" slump. He
 can't make aesthetically pleasing combinations of alternating
 vertical and horizontal rectangles. Change the recursive
 call in void mondrian() to alternate between vertical and
 horizontal rectangles
 
*/

color randomColor() {
  color[] colors = new color[5];
  colors[0] = color(255, 255, 255);
  colors[1] = color(255, 0, 0);
  colors[2] = color(0, 0, 255);
  colors[3] = color(255, 255, 0);
  
  return colors[(int)random(0, 4)];
}

void mondrian(int x, int y, int width, int height, boolean horizontal, int level) {
  println("Calling mondrian(" + x + ", " + y + ", " + width + ", " + height + ")");
  
  fill(randomColor());
  strokeWeight(5);
  
  rect(x, y, width, height);
  
  int partition = 0;
  
  if (horizontal) {
    partition = (int)random(width / 4, 3 * width / 4);
  } else {
    partition = (int)random(height / 4, 3 * height / 4);
  }

  if (level < 5) { //<>//
    if((int)random(0,5)>2){
      mondrian(x, y, partition, height, horizontal, level + 1);
      mondrian(x + partition, y, width - partition, height, horizontal, level + 1);   
    }
    else{
      mondrian(x, y+partition, width, height-partition, horizontal, level + 1);
      mondrian(x, y, width, partition, horizontal, level + 1);
    }
  }
  
}

void setup() {
  size(600, 600);
  mondrian(0, 0, 600, 600, true, 1);
}