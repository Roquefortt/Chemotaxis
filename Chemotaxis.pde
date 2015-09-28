 //declare bacteria variables here   
Bacteria [] colony;
int sizeX = 30;
int sizeY = 30;
	int myX, myY;

 void setup()   
 {      
 	size(400, 400);
 	frameRate(20);

 	colony = new Bacteria [50];
 	for (int i = 0; i < colony.length; i++)
    {
    	colony[i] = new Bacteria();
    }
 }   

 void draw()   
 {    
 	background(14, 85, 62);
	
  	if (get(myX, myY) == color(71, 141, 118))
 	{
 		sizeX++;
 		sizeY++;
 		//System.out.print("nom");
 	}

	for (int i = 0; i < colony.length; i++)
 	{
		colony[i].move();
		colony[i].show();

 	}

 	if (mousePressed)
 	{
 		fill(0, 100, 0);
 		ellipse(mouseX, mouseY, sizeX, sizeY);
 	}

		// System.out.print(" " + colony.length);
		

}  

 class Bacteria    
 {     
 	//lots of java!   
	int myX, myY, myColor;

 	Bacteria()
 	{
 		myX = 200;
		myY = 200;
 		myColor = color(71, 141, 118);
 	}

 	void move()
 	{
		myX = myX + (int)(Math.random()*3)-1;
		myY = myY + (int)(Math.random()*3)-1;
	 }

 	void show()
 	{
 		//fill(0, (int)(Math.random()*240)+16, 0);
 		fill (myColor);
 		noStroke();
 		ellipse(myX, myY, 10, 10);
 	}
 }    
