// eat the ball to become bigger
// eat the spike to make it smaller

float redX = 350;
float redX2 = 350;
float redY = 350;
float redY2 = 350;
float greyX = 350;
float greyY = 350;

boolean redMove = true;
float Xdir = 0;
float Xdir2 = 0;
float Ydir = 0;
float Ydir2 = 0;

boolean greyMove = true;
float Xdir3 = 0;
float Ydir3 = 0;

float blueX = 550;
float blueY = 350;

int blueW = 40;
int blueH = 40;

int increment = 10;


void setup () {
  
  size(700,700);
  background(255);
  
}



void draw () {
  background(255);
  
  
  if (keyPressed == true && key == CODED && keyCode == LEFT)
  {  //allows to move left
    blueX = blueX - 8;
  }
  
  if (keyPressed == true && key == CODED && keyCode == RIGHT)
  {  //allows to move right
    blueX = blueX + 8;
  }
  
  if (keyPressed == true && key == CODED && keyCode == UP)
  {  //allows to move up
    blueY = blueY - 8;
  }
  
  if (keyPressed == true && key == CODED && keyCode == DOWN)
  {  //allows to move down
    blueY = blueY + 8;
  }
  
  if (blueX < greyX + blueW/2 && blueX > greyX - blueW/2 && blueY < greyY + blueH/2 && blueY > greyY - blueH/2) // if the red gets caught then the blue grows/
  {
   greyX = random (50, 650);
   greyY = random (50, 650);
   Xdir3 = random (-3, 3);
   Ydir3 = random (-3, 3);
   blueW = blueW - increment;
   blueH = blueH - increment;
  }

  
  else if (blueX < redX + blueW/2 && blueX > redX - blueW/2 && blueY < redY + blueH/2 && blueY > redY - blueH/2) // if the red gets caught then the blue grows/
  {
   redX = random (50, 650);
   redY = random (50, 650);
   Xdir = random (-3, 3);
   Ydir = random (-3, 3);
   blueW = blueW + increment;
   blueH = blueH + increment;
  }
  
  else if (blueX < redX2 + blueW/2 && blueX > redX2 - blueW/2 && blueY < redY2 + blueH/2 && blueY > redY2 - blueH/2) // if the red gets caught then the blue grows/
  {
   redX2 = random (50, 650);
   redY2 = random (50, 650);
   Xdir2 = random (-3, 3);
   Ydir2 = random (-3, 3);
   blueW = blueW + increment;
   blueH = blueH + increment;
  }
  
  fill (#9B9797);
  ellipse (greyX, greyY, 20, 20);
  
  fill (255,0,0);
  ellipse (redX, redY, 20, 20);
  
  fill (255,0,0);
  ellipse (redX2, redY2, 20, 20);
  
  fill (0,0,255);
  ellipse (blueX, blueY, blueW, blueH);
  
  if (blueH == 0)
  {
    text("GAME OVER!",width/2,height/2);
    textAlign(CENTER);
    textSize(100);
  }
}
