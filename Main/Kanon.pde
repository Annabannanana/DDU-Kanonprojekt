class Kanon extends Komponenter{
  
  ArrayList<Kugle> alleKugler = new ArrayList<Kugle>();
  Kugle kugleIKanon;
  PImage cannon;
  
  Kanon(){
    nytSkud();
    cannon = loadImage("gun.png");
    cannon.resize(150, 100);
  }
  
  void nytSkud(){
    Kugle nytSkud = new Kugle();
    nytSkud.loca.x = 200;
    nytSkud.loca.y = 500;
    nytSkud.w = 15; 
    nytSkud.h = 15;
    
    alleKugler.add(nytSkud);
    kugleIKanon = alleKugler.get(alleKugler.size() - 1);
  }
  
  void skyd(){
    float afstand = dist(kugleIKanon.loca.x, kugleIKanon.loca.y, mouseX, mouseY);
    kugleIKanon.velo.x = (dist(kugleIKanon.loca.x, kugleIKanon.loca.y, mouseX, kugleIKanon.loca.y) / 50) * (afstand / 50);
    kugleIKanon.velo.y = (dist(kugleIKanon.loca.x, kugleIKanon.loca.y, kugleIKanon.loca.x, mouseY) / 50) * (-afstand / 50);
    kugleIKanon.fired = true;
    nytSkud();
  }
  
  void display(){
    for(Kugle k : alleKugler){
      k.display();
      k.update();
    }
    image(cannon, 140, 530);
  }
  
}
