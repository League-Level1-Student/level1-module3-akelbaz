int frogx=0;
int frogy=0;
float maxSpeed=random(10);
float cary=random(height);
car ca = new car(0,0,50,10);
void setup() {
  size(800, 600);
}
void draw() {
  background(34, 124, 259);
  fill(0, 250, 0);
  ellipse(frogx, frogy, 50, 50);
  frogBounds();
ca.display();
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      frogy-=5;
    } else if (keyCode == DOWN)
    {
      frogy+=5;
    } else if (keyCode == RIGHT)
    {
      frogx+=5;
    } else if (keyCode == LEFT)
    {
      frogx-=5;
    }
  }
}
void frogBounds() {
  if (frogx>=800) {
    frogx=800;
  }
  if (frogy>=600) {
    frogy=600;
  }
  if (frogx<=0) {
    frogx=0;
  }
  if (frogy<=0) {
    frogy=0;
  }
}
class car {
int carX;
int carY;
int size;
int speed;
car(int carX,int carY,int size,int speed){
this.carX=carX;
this.carY=carY;
this.size=size;
this.speed=speed;

}
void display()
  {
    fill(0,255,0);
    rect(carX , carY,  size, 50);
  }
}
