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
 		colony[j].move();
 		colony[j].show();
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
 		myX = myX + (int)(Math.random() * 7) - 3;
 		myY = myY + (int)(Math.random() * 7) - 3;
 	}
 	void show()
 	{
 		fill( (int)(Math.random() * 206) + 50, (int)(Math.random() * 206) + 50, (int)(Math.random() * 206) + 50);
 		ellipse(myX, myY, 10, 10);
 	}
 }    