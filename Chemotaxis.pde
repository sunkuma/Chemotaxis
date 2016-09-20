Bacteria [] colony;
void setup()   
{     
 	size(500, 500);
 	colony = new Bacteria[10];
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
}  
class Bacteria 
{    
 	int myX;
 	int myY;
 	Bacteria()
 	{
 		myX = 250;
 		myY = 250;
 	}
 	void move()
 	{

 		if(mousePressed == true)
 		{
 			if(mouseX > myX)
 			{
 			myX = myX + (int)(Math.random() * 5) - 1;
 			}
 			if(mouseX < myX)
 			{
 			myX = myX - (int)(Math.random() * 5) - 1;
 			}
 			if(mouseY < myY)
 			{
 			myY = myY - (int)(Math.random() * 5) - 1;
 			}
 			if(mouseY > myY)
 			{
 			myY = myY + (int)(Math.random() * 5) - 1;
 			}
 		}
 	}
 	void randomMove()
 	{
 		myX = myX + (int)(Math.random() * 7) - 3;
 		myY = myY + (int)(Math.random() * 7) - 3;
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