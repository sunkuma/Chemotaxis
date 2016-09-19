Bacteria [] colony;
void setup()   
{     
 	size(500, 500);
 	colony = new Bacteria[100];
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
 		colony[j].chemoColor();
 		colony[j].show();  
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
 		if(mouseX > myX)
 		{
 			myX = myX + (int)(Math.random() * 5) - 1;
 		}
 		if(mouseX < myX)
 		{
 			myX = myX + (int)(Math.random() * 1) - 5;
 		}
 		if(mouseY < myY)
 		{
 			myY = myY + (int)(Math.random() * 1) - 5;
 		}
 		if(mouseY > myY)
 		{
 			myY = myY + (int)(Math.random() * 5) - 1;
 		}

 	}
 	void chemoColor()
 	{
 		fill( (int)(Math.random() * 206) + 50, (int)(Math.random() * 206) + 50, (int)(Math.random() * 206) + 50);
 	}
 	void show()
 	{
 		ellipse(myX, myY, 10, 10);
 	}
 }    