final class Fps : FixedLayer
{
    Fps()
    {      
        pos.x = 5;
	    pos.y = 5;
	    name = "Fps";                  
    }

    void logic()
    {
        game.Hint(pos.x, pos.y, "FPS: ", game.fps(), -1, 0xffffff);       
    }
};
