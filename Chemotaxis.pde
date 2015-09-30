 //declare bacteria variables here   
Bacteria [] colony;

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
 		colony[i].mouseMoved();
		colony[i].move();
		colony[i].show();
 	}

 	if (mousePressed)
 	{
 		fill(39, 116, 85);
 		noStroke();
 		ellipse(mouseX, mouseY, 30, 30);
 		stroke(0);

 		//face
 		strokeWeight(2);
 		point(mouseX-5, mouseY-5);
 		point(mouseX+5, mouseY-5);

 		strokeWeight(1);
 		fill(14, 85, 62);
 		line(mouseX-5, mouseY+3, mouseX+3, mouseY+10);
 		line(mouseX+5, mouseY+3, mouseX-5, mouseY+10);
 	}
		
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
 		stroke(0);
 		ellipse(myX, myY, 10, 10);
 	}
 }    
