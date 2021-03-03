float x= 100;
float y= 100;

PVector position;
float playerSpeed = 5;

Bullet b;

ArrayList<Bullet> bullets = new ArrayList<Bullet>();
void setup()
{
  size(800, 800);
  position = new PVector(400, 400);
  b = new Bullet();
}


void draw()
{
  background(0);

  PVector mouse = new PVector(mouseX, mouseY);
  PVector direction = mouse.copy().sub(position);
  ellipse(position.x, position.y, 40, 40);
  stroke(255, 0, 0);
  line(mouse.x, mouse.y, position.x, position.y);
direction.normalize();
    direction.mult(5);

  if (mousePressed)
  {

     direction = mouse.copy().sub(position);
    //direction.normalize();
    //direction.mult(5);

   
  }
  
  
  b.Render();
  
  for(Bullet bull : bullets)
  {
    bull.Render();
  }
  
  
   position.add(direction);
}

void keyPressed()
{
  if(key == ' ')
  {
   bullets.add(new Bullet());
  }
}