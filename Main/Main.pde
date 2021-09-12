
Kanon kanon;

void setup(){
  size(1200, 700);
  imageMode(CENTER);
  kanon = new Kanon();
}

void draw(){
  clear();
  background(255);  
  kanon.display();
}

void mousePressed(){
  kanon.skyd();
}
