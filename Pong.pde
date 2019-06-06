void setup() {
  size(400, 400);  
}

int xdir = (int)round(random(2, 6));

balls ball_obj = new balls(200, 200, 10, 50, xdir);
user_controlled_padel padel_obj = new user_controlled_padel(40, mouseY);
ai_padel ai = new ai_padel(360, 200);
int dir = random_dir();
int ai_dir = random_dir();
int ydir = random_dir();

void draw() {
  background(0);
  
  ball_obj.xpos += dir;
  ball_obj.ypos += ydir;
  
  ball_obj.show();

  padel_obj.show();
  padel_obj.update(40, mouseY);
  
  ai.show();
  ai.move(true);

  ai.ypos += ai_dir;
  if (ai.ypos > 400) {
    ai_dir = -ai_dir;
  } else if (ai.ypos < 0) {
   ai_dir = -ai_dir; 
  }

  if (ball_obj.xpos > 400) {
    reset(ball_obj);
    padel_obj.points++;
    // player 1 scores
   } else if (ball_obj.xpos < 0) {
    reset(ball_obj );
    ai.points++;
    // player 2 scores
   }
  
  
  if (intersection(ball_obj.xpos, ball_obj.ypos, padel_obj.xpos, padel_obj.ypos + 20, padel_obj.w, padel_obj.h, ball_obj.radius)) {
     dir = -dir;
     ydir = -ydir;
  } else if (intersection(ball_obj.xpos, ball_obj.ypos, ai.xpos, ai.ypos + 20, ai.w, ai.h, ball_obj.radius)) {
     dir = -dir;
     ydir = -ydir;
  }

  if (ball_obj.ypos < 0) {
   ball_obj.ypos = -ball_obj.ypos; 
  } else if (ball_obj.ypos > 400) {
   ball_obj.ypos = -ball_obj.ypos; 
  }

  if (intersection(ball_obj.xpos, ball_obj.ypos, padel_obj.xpos, padel_obj.ypos + 20, padel_obj.w, padel_obj.h, ball_obj.radius) && ball_obj.ypos == 200 || 
      intersection(ball_obj.xpos, ball_obj.ypos, ai.xpos, ai.ypos + 20, ai.w, ai.h, ball_obj.radius)  && ball_obj.ypos == 200 ) {
     ball_obj.ypos += ydir; 
  }
  
  textSize(40);
  fill(20, 255, 0);
  text(ai.points, 360, 40);
  text(padel_obj.points, 40, 40);
  
}
