 //declare bacteria variables here   
Bacteria [] colony;
int sizeX = 30;
int sizeY = 30;
	

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

	for (int i = 0; i < colony.length; i++)
 	{
		colony[i].move();
		colony[i].show();
 	}


 	if (mousePressed)
 	{
 		fill(39, 116, 85);
 		noStroke();
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
		if ((myX > 400 || myX < 0) || (myY < 0) || (myY > 400))
	 	{
		 	myX = 150;
		 	myY = 150;
	 	}

		myX = myX + (int)(Math.random()*3)-1;
		myY = myY + (int)(Math.random()*3)-1;

		if (get(myX, myY) != color(14, 85, 62))
	 	{
	 		
	 		//System.out.print("nom");
	 	}
	


	 }

 	void show()
 	{

 		fill (myColor);
 		stroke(255);
 		ellipse(myX, myY, 10, 10);
 	}
 }    
