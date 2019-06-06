boolean intersection(int circle_x, int circle_y, int rect_x, int rect_y, int rect_w,int rect_h, int circle_r) {
  int delta_x = circle_x - max(rect_x - (rect_w/2), min(circle_x, rect_x + (rect_w/2)));
  int delta_y = circle_y - max(rect_y - (rect_h/2), min(circle_y, rect_y + (rect_h/2)));
  
  if ((delta_x * delta_x + delta_y * delta_y) < (circle_r * circle_r)) {
   return true; 
  } else {
   return false; 
  }
}

int random_dir() {
  int ran = round(random(2, 6));
  int fiftyfifty = (int)random(0, 2);
  
  if (fiftyfifty > ((int)random(0, 2) / 2)) {
    ran = -ran;
  }
  
  return ran;
}


void reset(balls ball_obj) {
  ball_obj.xpos = 200;
  ball_obj.ypos = 200;
  ball_obj.speed = (int)random(2, 6);
}
