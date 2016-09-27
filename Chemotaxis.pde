Bacteria [] colony;
boolean gameOver = false;
void setup()   
{     
 	size(500, 500);
 	colony = new Bacteria[25];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
}   
void draw()   
{    
 	background(0);

 	for(int j = 0; j < colony.length; j++)
 	{
 		colony[j].show();
 		colony[j].randomMove();
 		colony[j].move();
 		colony[j].check();
 	}
 	Prey myMouse = new Prey();
 	myMouse.show();
 	if(gameOver == true)
 	{
 		background(0);
 		textSize(50);
 		text("GAME OVER", 100, 250);
 		if(mousePressed == true)
 		{
 			gameOver = false;
 		}
 	}
} 
class Prey
{
	int myX;
	int myY;
	Prey()
	{
		myX = mouseX;
		myY = mouseY;
	}
	void show()
	{
		fill(0, 230, 0);
		ellipse(myX, myY, 10, 10);
	}
}
class Bacteria 
{    
 	int myX;
 	int myY;
 	int myColor1;
 	int myColor2;
 	int myColor3;
 	Bacteria()
 	{
 		myX = (int)(Math.random() * 461) + 20;
 		myY = (int)(Math.random() * 461) + 20;
 		myColor1 = (int)(Math.random() * 256) + 20;
 		myColor2 = (int)(Math.random() * 256) + 20;
 		myColor3 = (int)(Math.random() * 256) + 20;
 	}
 	void move()
 	{
 		
 			if(mouseX > myX)
 			{
 			myX = myX + (int)(Math.random() * 2);
 			}
 			if(mouseX < myX)
 			{
 			myX = myX - (int)(Math.random() * 2);
 			}
 			if(mouseY < myY)
 			{
 			myY = myY - (int)(Math.random() * 2);
 			}
 			if(mouseY > myY)
 			{
 			myY = myY + (int)(Math.random() * 2);
 			}
 	}
 	void randomMove()
 	{
 		myX = myX + (int)(Math.random() * 5) - 2;
 		myY = myY + (int)(Math.random() * 5) - 2;
 	}
 	void show()
 	{
 		fill(myColor1, myColor2, myColor3);
 		ellipse(myX, myY, 25, 25);
 		stroke(0);
 		arc(myX, myY + 5, 10, 10, PI, 2 * PI);
 		fill(0);
 		ellipse(myX + 5, myY - 5, 5, 5);
 		ellipse(myX - 5, myY - 5, 5, 5);
 	}
 	void check()
 	{
 		if(mouseX == myX && mouseY == myY)
 		{
 			gameOver = true;
 		}
 	}
 }    