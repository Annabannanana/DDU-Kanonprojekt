
Kanon kanon;

void setup(){
  size(1200, 700);
  imageMode(CENTER);
  kanon = new Kanon();
}

void draw(){
  clear();
  background(0, 150, 200);  
  kanon.display();
  fill(0, 200, 100);
  ellipse(600, 700, 3000, 200);
}

void mousePressed(){
  kanon.skyd();
}
