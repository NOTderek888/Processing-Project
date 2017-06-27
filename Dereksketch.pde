/*
 
 brickwall with seizure inducing blob guy
 
*/
//bricks with random colors
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
//stopsign creator, without letters
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
//cylinder for pole of stopsign
void cyl(int x, int y){
  
  beginShape();
  int ydif = 300;
  fill(200,200,200);
  ellipse(x,y+ydif,20,20);
  vertex(x-10, y);
  vertex(x-10,y+ydif);
  vertex(x+10,y+ydif);
  vertex(x+10,y);
  
  
  
  endShape(CLOSE);
  
}
//nice guy with eyes
void nice(int x, int y){
  Random rand = new Random();
  fill(rand.nextInt(255),rand.nextInt(255),rand.nextInt(255));
  rect(x,y,100,100,50,50,50,50);
  fill(255,255,255);
  ellipse(x+25,y+75,25,25);
  ellipse(x+75,y+75,25,25);
  fill(0,0,0);
  ellipse(x+25,y+75,10,10);
  ellipse(x+75,y+75,10,10);
}
void setup() {
  size(1200, 700);
  noStroke();
  for(int i = 0; i<1200; i+=40){
    for(int y = 0; y<700;y+=30){
      brick(i,y);
    }
  }
  cyl(640,340);
  oct(600,100);
  fill(73, 26, 19);
  rect(0,625,1200,100);
  
  nice(600,525);
  
  
 
  
}
void draw(){
  int x = 600;
  int y = 525;
  nice(x,y);
  delay(50);
  
  
}
