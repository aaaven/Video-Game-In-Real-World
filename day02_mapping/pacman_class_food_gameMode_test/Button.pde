class Button {
  boolean status, mouseHover;
  float bx, by, bh, bw, textW;
  color bcolor;
  String str;
  Button(String string, float x, float y, float h) {
    str = string;
    bx = x;
    by = y;
    bh = h;
    textSize(0.8*bh);
    textW = textWidth(str);
    bw = textW + 0.2*bh;
  }
  void run() {
    check();
    display();
  }
  void check() {
    if (mouseX <bx+bw && mouseX > bx && mouseY < by+bh && mouseY > by ) {
      //mouse hover
      bcolor = #BFDAFF;
      mouseHover = true;
    } else {
      bcolor = #4C7A7E;
      mouseHover = false;
    }
    if (mouseHover && mousePressed) {
      status = true;
      bcolor = #0E3236;
    } else status = false;
    //println("buttonStatus" + status + "hover" + mouseHover);
  }
  void display() {
    fill(bcolor);
    noStroke();
   // textMode(SHAPE);
    textAlign(LEFT, TOP);
    rect(bx, by, bw, bh);
    fill(255);
    text(str, bx+0.1*bh, by);
  }
}