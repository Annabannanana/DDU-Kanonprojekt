class Kugle extends Komponenter{
  
  boolean fired = false;
  
  Kugle(){
    mass = 10;
  }
  
  void applyGravity(PVector force){
    PVector gravity;
    gravity = force.copy();
    gravity.div(mass);
    accel.add(gravity);
  }
  
  void update(){
    if(fired == true){
      applyGravity(grav);
    }
    velo.add(accel);
    loca.add(velo);
    accel.mult(0);
  }
  
  void display(){
    fill(40);
    ellipse(loca.x, loca.y, w, h);
  }
}
