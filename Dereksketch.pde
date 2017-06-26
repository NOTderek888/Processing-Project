/*
 
 sketch_1_forloop
 
 Your neighborhood association wants you to build a white
 picket privacy fence. You've put up the fence rail and
 one picket. Write a loop to place all ten pickets!
 
*/
//bricks
import java.util.Random;
void brick(int x, int y) {
  beginShape();
  Random ra = new Random();
  fill(ra.nextInt(100)+75,ra.nextInt(50), ra.nextInt(50));
  vertex(x, y);
  vertex(x, y+30);
  vertex(x + 40, y+30);
  vertex(x + 40, y);
  
  endShape(CLOSE);
}
//stopsign creator
void oct(int x, int y){
  beginShape();
  int xdif = 80;
  int ydif = 80;
  fill(255,0,0);
  vertex(x, y);
  vertex(x-xdif,y+ydif);
  vertex(x-xdif,(y+2*ydif));
  vertex(x,(y+3*ydif));
  vertex(x+xdif,(y+3*ydif));
  vertex((x+2*xdif),(y+2*ydif));
  vertex((x+2*xdif),(y+ydif));
  vertex((x+xdif),(y));
  endShape(CLOSE);
}
//cylinder
void cyl(int x, int y){
  beginShape();
  
  fill(200,200,200);
  vertex(x-10, y);
  vertex(x-10,y+100);
  vertex(x+10,y+100);
  vertex(x+10,y);
  
  

  endShape(CLOSE);
}
void setup() {
  size(1200, 700);
  stroke(0,0,0);
  for(int i = 0; i<1200; i+=40){
    for(int y = 0; y<700;y+=30){
      brick(i,y);
    }
  }
  cyl(640,340);
  oct(600,100);
  
  

 
}