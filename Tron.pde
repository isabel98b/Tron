int x = 200;
int y = 150;
int compX = 200;
int compY = 151;
int compDir = DOWN;
boolean gameOver = false;
PImage gameover;
void setup()
{
  size(400, 300);
  //gameover = loadImage("http://2.bp.blogspot.com/-FEwFpHZqbIM/VW-WkfVxjPI/AAAAAAAADT0/4faa6M0fRZw/s400/Metal_Gear_Solid_%2528PSX%2529_20.png");
  frameRate(40);
  background(255);
  textSize(48);
  textAlign(CENTER);
  key = 'w';
}
void draw()
{
  if (gameOver == false)
  {
    human();
  }
  if (gameOver == false)
  {
    computer();
    border();
  }
}
void border()
{
  stroke(0, 0, 255);
  fill(0, 0, 255);
  rect(0, 0, 400, 10);
  rect(0, 0, 10, 400);
  rect(0, 290, 400, 10);
  rect(390, 0, 10, 400);
}
void human()
{
  if (get(x, y) != color(255))
  {
    fill(255, 255, 0);
    image(gameover,0,0,400,300);
    //text("GAME OVER");
    gameOver = true;
  }
  stroke(0);
  point(x, y);
  line(0, 0, 0, 0);

  if (key == 'w')
  {
    y = y-1;
  }
  if (key == 's')
  {
    y = y+1;
  }
  if (key == 'a')
  {
    x = x-1;
  }
  if (key == 'd')
  {
    x = x+1;
  }
}
void computer()
{
if (get(compX, compY) != color(255))
  {
    fill(255, 255, 0);
    text("YOU WIN", 200, 200);
    gameOver = true;
  }
  stroke(255, 0, 255);
  point(compX, compY);
  if (compDir == DOWN)
  {
    compY = compY + 1;
    if (get(compX, compY+1) != color(255))
    {
      compDir = LEFT;
    }
  }
  else if (compDir == LEFT)
  {
    compX = compX - 1;
    if (get(compX-1, compY) !=color(255))
    {
      compDir = UP;
    }
  }
  else if (compDir == UP)
  {
    compY = compY - 1;
    if (get(compX, compY-1) != color(255))
    {
      compDir = RIGHT;
    }
  }
  else if (compDir == RIGHT)
  {
    compX = compX + 1;
    if (get(compX + 1, compY) != color(255))
    {
      compDir = DOWN;
    }
  }
}
void mouseClicked()
{
  reset();
}
void reset()
{
  x = 200;
  y = 150;
  key = 'w';
  compX = 200;
  compY = 151;
  compDir = DOWN;
  gameOver = false;
  background(255);
  border();
}
  


