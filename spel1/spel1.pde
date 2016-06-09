// Spelarens position

int playerX;
int playerY;

// Monstrets position

int monsterX;
int monsterY;

// Rita monster på skärmen

void drawMonster()
{
  noStroke();
  fill(255, 0, 0);
  ellipse(monsterX, monsterY, 30, 30);
}

// Flytta monstret efter spelaren

void moveMonster()
{
  if ((playerX - monsterX)>=0)
    monsterX = monsterX + 1;
  else
    monsterX = monsterX - 1;

  if ((playerY - monsterY)>=0)
    monsterY = monsterY + 1;
  else
    monsterY = monsterY - 1;
}

// Kontrollera om monstret träffar spelaren

void checkMonster()
{
  if ((abs(playerX - monsterX)<=10) && (abs(playerY-monsterY)<=10))
  {
    monsterX = int(random(width));
    monsterY = int(random(height));    
  }
}

// Rita spelaren på skärmen

void drawPlayer()
{
  noStroke();
  fill(255, 255, 0);
  ellipse(playerX, playerY, 30, 30);
}

// Flytta spelaren med tangentbordet

void keyPressed()
{
  if (key == 'w')
    playerY = playerY - 20;
    
  if (key == 's')
    playerY = playerY + 20;

  if (key == 'a')
    playerX = playerX - 20;
    
  if (key == 'd')
    playerX = playerX + 20;
}

// Ställ in storlek på skärm och värden på variabler

void setup() 
{
  size(1024, 768);
  
  playerX = width/2;
  playerY = height/2;
  
  monsterX = int(random(width));
  monsterY = int(random(height));
}

// Uppritningsloop

void draw()
{
  background(0);
  drawPlayer();
  drawMonster();
  moveMonster();
  checkMonster();
}