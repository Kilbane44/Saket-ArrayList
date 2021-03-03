class Bullet
{
  PVector pos;
  PVector dir;
  float speed = 10;
  
  Bullet()
  {
    pos = new PVector(position.x, position.y);
    PVector mouse = new PVector(mouseX, mouseY);
    dir = mouse.copy().sub(pos);
    dir.normalize();
    dir.mult(speed);
    
  }
  
  
  void Render()
  {
    fill(255,0,255);
    ellipse(pos.x, pos.y, 10, 10);
    
    
    pos.add(dir);
  }
}