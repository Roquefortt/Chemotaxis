 //declare bacteria variables here   
int myX, myY, myColor;

 void setup()   
 {      
 	size(400, 400);
 }   

 void draw()   
 {    
 	background(14, 85, 62);

 	if (mousePressed)
 	{
 		ellipse(mouseX, mouseY, 30, 30);
 	}

    Bacteria [] colony = new Bacteria [8];
    for (int i=0; i < colony.length; i = i + 1)
    {
    	colony[i] = new Bacteria(myX,myY);
    	colony[i].move();
  		colony[i].show();
    }  
 }  

//mouseX= another var so it'll go towards mouse
 class Bacteria    
 {     
 	//lots of java!   
 	//int mouseX = pmouseX; 

 	Bacteria(int x, int y)
 	{
 		//myColor = color((int)(Math.random()*240)+16);
 		myColor = color(71, 141, 118);
 		myX = myX + (int)(Math.random()*3)-1;
		myY = myY + (int)(Math.random()*3)-1;
 	}

 	void move()
 	{
		myX = myX + (int)(Math.random()*3)-1;
		myY = myY + (int)(Math.random()*3)-1;

	/*	int direction = (int)(Math.random()*4);

		if(direction == 0)
		{
		 	myX = myX + 20; //right
		}

		 else if(direction == 1)
		 {
			myX = myX - 20; //left
		 }

		 else if(direction == 2)
		 {
			myY = myY + 20; //down
		 }

		 else // direction must be 3
		 {
			myY = myY - 20; //up
		 }
*/
	 }

 	void show()
 	{
 		//fill(0, (int)(Math.random()*240)+16, 0);
 		fill (myColor);
 		noStroke();
 		ellipse(myX+150, myY+150, 10, 10);
 	}
 }    
