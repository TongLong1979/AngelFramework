void main()
{		
	ObjectManager manager;		
		
	//manager.add(Player(100,50));
	
	manager.add(Fps(),1);
	manager.add(Player());	
	manager.prepare();
	
	//manager.showObjectsInfo();
	//ObjectInfo();

    for(;;)
	{
		game.Vsync();
		game.clearBuffer();		
		//-----------------------------------
		manager.draw();
		//-----------------------------------
		game.Draw();
	}	
}