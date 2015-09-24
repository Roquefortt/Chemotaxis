 //declare bacteria variables here   
int myX, myY, myColor;
int sizeX = 30;
int sizeY = 30;

 void setup()   
 {      
 	size(400, 400);
 	frameRate(20);
 }   

 void draw()   
 {    
 	background(14, 85, 62);

 	if (mousePressed)
 	{
 		ellipse(mouseX, mouseY, sizeX, sizeY);
 	}


/* if bacteria doesnt get green, 
  	if (get(myX, myY) != color(71, 141, 118))
 	{
 		sizeX++;
 		sizeY++;
 		//System.out.print("nom");
 	}
   */

	
	    Bacteria [] colony = new Bacteria [10];
	    for (int i = 0; i < colony.length; i ++)
	    {
	    	colony[i] = new Bacteria(myX,myY);
	    	colony[i].move();
		  	colony[i].show();
		 } 
		// System.out.print(" " + colony.length);
		

}  


//mouseX= another var so it'll go towards mouse
 class Bacteria    
 {     
 	//lots of java!   

 	Bacteria(int x, int y)
 	{
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
 		ellipse(myX+150, myY+150, 10, 10);
 	}
 }    
