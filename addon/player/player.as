final class Player : ObjectBase
{
	Player(const int _x = 0, const int _y = 0)
	{
		pos.x = _x;
		pos.y = _y;
		name = "Player";
		sheet = "addon/player/img/sprite.bmp";
		rect = {6, 64, 64, 64, 0, 6}; // {frames, w, h, startx, starty, columns}
		frames = {1,6};
		delay = 150;		
	}

	void logic() 
	{

	}
};