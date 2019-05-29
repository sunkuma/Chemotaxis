Bacteria [] col; 
void setup () 
{   
  size(600, 600); 
  col = new Bacteria[70];
  for (int i =0; i < col.length; i ++) 
  {
  col[i] = new Bacteria(); 
  }
}
void draw() 
{ 
  background(113, 170, 246); ;
  for (int i = 0; i< col.length; i++) 
  {
  col[i].show();
  col[i].move();
  }
  textSize(12);
  fill(215, 255, 0);
 text("HONEY", mouseX, mouseY); 
  stroke(255);
  line(mouseX, mouseY, pmouseX, pmouseY);

}

class Bacteria
{
  int x; //
  int y;
  //int c; 
  
  
  Bacteria(int x, int y, int c) {
    this.x= x;
    this.y = y; 
    //this.c = c;
    
  }
   Bacteria()
   {
     x = (int)(Math.random()*501);
     y = (int)(Math.random()*601);

   }

  void move() {
    
    x = x + (int)(Math.random()*3)+2;  
    y = y + (int)(Math.random()*3)+2; 
  
    if (x < mouseX ){
     x += (int)(Math.random()*2)- 2;
    }
    else if (x > mouseX){
     x -= (int)(Math.random()*2)+ 4;
    }  
     if (y < mouseY ){
     y += (int)(Math.random()*2)- 2;
    }
    else if (y > mouseY){
     y -= (int)(Math.random()*2)+ 4;
    }
    
    
  }
 
  void show() {
    noStroke();
    fill (0);
    ellipse(x+10, y+2, 7, 7);
    noStroke();
    fill(240, 187, 30);
    ellipse(x, y, 10, 10);
    noStroke();
    fill(0); 
    ellipse(x-2, y-9, 7, 7);  
 }
}
