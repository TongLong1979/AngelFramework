abstract class ObjectBase
{
	Position pos;
	string sheet = "";
	string name = "unknow";
	int damage = 0;
	int life = 0;
	int delay = 60;
	int layer = 0;
	bool visible = true;		
	array <int> rect = {1, 32, 32, 0, 0, 1}; // {frames, w, h, startx, starty, columns}
	array <int> frames = {0, 1};
	
	void logic()
	{

	}
};