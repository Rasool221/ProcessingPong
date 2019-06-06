public class balls {
  int xpos;
  int ypos;
  int radius;
  int outer_radius;
  int speed;
  
  public balls(int x, int y, int r, int outer_r, int speed) {
     this.xpos = x;
     this.ypos = y;
     this.radius = r;
     this.outer_radius = outer_r; 
     this.speed = speed;
   }
  void show() {
    fill(0);
    strokeWeight(2);
    stroke(255, 255, 255);  
    fill(255, 255, 255);
    ellipse(this.xpos, this.ypos, this.radius*2, this.radius*2);
   }
 
 }
 
