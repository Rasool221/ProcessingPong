public class user_controlled_padel { 
   int xpos;
   int ypos;
   int w = 10;
   int h = 40;
   int points = 0; 
    
   public user_controlled_padel(int x, int y) {
     this.xpos = x;
     this.ypos = y;
   }
 
   void show() {
     fill(255, 0, 0);
     rect(this.xpos, this.ypos, this.w, this.h);
   }
   
   void update(int x, int y) {
    this.xpos = x;
    this.ypos = y;
   }
   
   void update_score(int score) {
     this.points += score;
   }
   
   int get_score() {
    return this.points; 
   }
}

public class ai_padel extends user_controlled_padel {
    
    public ai_padel(int x, int y) {
      super(x, y);
    }
    
    void show() {
     fill(255, 0, 0);
     rect(this.xpos, this.ypos, this.w, this.h);
    }
    
    void update(int x, int y) {
     this.xpos = x;
     this.ypos = y;
    }
     
    void move(boolean bool) {
      if (bool) {
       int dir = (int)round(random(2, 4));
 //      this.ypos += dir;
 
       if (this.ypos > 400) {
        dir = -dir;
       } else if (this.ypos < 0) {
        dir = -dir; 
       }
       
      } else {
       this.ypos = 200; 
      }
    }
    
    void update_score(int score) {
     this.points += score;
    }
     
    int get_score() {
     return this.points; 
    }
    
}
