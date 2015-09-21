 //declare bacteria variables here   
Bacteria slime;

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(400, 400);
 	//background(143, 143, 143);
 }   

//position is getting reset each time this runs.
 void draw()   
 {    
 	//move and show the bacteria  
 	background(143, 143, 143);
    slime = new Bacteria (100, 100); 
    slime.move();
    slime.show();
   
   // Bacteria [] colony = new Bacteria [4];;

  /*  Bacteria [] colony;
    colony = new Bacteria [4];

    for (int i=0; i < 5; i++)
    {
    	colony[i] = new Bacteria();
    }  
 */

 }  


//mouseX= another var so it'll go towards mouse
 class Bacteria    
 {     
 	//lots of java!   
 	int myX, myY, myColor;
 	//int mouseX = pmouseX; 

 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 		myColor = color((int)(Math.random()*256));
 	}

 	void move()
 	{
		//myX = myX + (int)(Math.random()*10)-1;
		//myX = myX + pmouseX;
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
 		//fill(myColor, myColor, myColor);
 		fill(0, (int)(Math.random()*240)+16, 0);
 		noStroke();
 		ellipse(myX, myY, 10, 10);
 	}
 }    
