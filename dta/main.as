void main()
{		
	ObjectManager manager;		

	Player p1(100,50);	
	p1.name = "Player1";
	//p1.visible = false;
	p1.dead = true;
	manager.add(p1);
	
	manager.add(Fps());
	manager.add(Player());	
	manager.prepare();	
	
	manager.showObjectsInfo();
	//ObjectInfo();
	
	showErrors();

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