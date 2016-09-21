Bacteria [] colony;
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
 	}
 	Prey myMouse = new Prey();
 	myMouse.show();
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
 	Bacteria()
 	{
 		myX = (int)(Math.random() * 461) + 20;
 		myY = (int)(Math.random() * 461) + 20;
 	}
 	void move()
 	{

 		if(mousePressed == true)
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
 	}
 	void randomMove()
 	{
 		myX = myX + (int)(Math.random() * 5) - 2;
 		myY = myY + (int)(Math.random() * 5) - 2;
 	}
 	void show()
 	{
 		fill(255, 255, 0);
 		ellipse(myX, myY, 25, 25);
 		stroke(0);
 		arc(myX, myY + 5, 10, 10, PI, 2 * PI);
 		fill(0);
 		ellipse(myX + 5, myY - 5, 5, 5);
 		ellipse(myX - 5, myY - 5, 5, 5);
 	}
 }    