 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(400, 400);
 }   

 void draw()   
 {    
 	//move and show the bacteria  
 	background(143, 143, 143);
 	Bacteria slime = new Bacteria (100, 100); 
 	slime.move();
 	slime.show();

 /*array
 	  for(int i=0; i<slime.length; i++)

  {
    slime[i].move();
    slime[i].show();

  }  
*/

 }  

//mouseX= another var so it'll go towards mouse
 class Bacteria    
 {     
 	//lots of java!   
 	int myX, myY;
 	int colour;

 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 		colour = (int)(Math.random()*256);
 	}

 	void move()
 	{
		myX = myX + (int)(Math.random()*30)-1;
		myY = myY + (int)(Math.random()*30)-1;
 	}


 	void show()
 	{
 		//fill(colour, colour, colour);
 		fill(0,(int)(Math.random()*240)+16,0);
 		noStroke();
 		ellipse(myX, myY, 10, 10);
 	}
 }    
