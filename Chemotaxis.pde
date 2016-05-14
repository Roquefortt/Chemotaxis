 //declare bacteria variables here   
Bacteria [] colony;

 void setup()   
 {      
 	size(400, 400);
 	frameRate(20);

 	colony = new Bacteria [150];
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
 		colony[i].mouseMoved();
		colony[i].move();
		colony[i].show();
 	}
		
}  

 class Bacteria    
 {     
 	//lots of java!   
	int myX, myY, myColor;

 	Bacteria()
 	{
 		myX = (int)(Math.random()*400);
		myY = (int)(Math.random()*400);
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
	 }

	void mouseMoved() {
		myColor = myColor + 5;

		if (myColor > 255) {
		   myColor = 0;
		}
	}

 	void show()
 	{
 		strokeWeight(1);
 		fill(myColor);
 		noStroke();
 		ellipse(myX, myY, (int)(Math.random()*20), (int)(Math.random()*20));
 	}
 }    
