abstract class ObjectBase
{
	Position pos;
	string sheet 	= "";
	string name 	= "unknow";
	uint damage 	= 0;
	uint life 		= 0;
	uint delay 		= 60;
	uint layer 		= 0;
	bool visible 	= true;
	bool dead 		= false;
	bool fixed		= false;
	array <uint> rect = {1, 32, 32, 0, 0, 1}; // {frames, w, h, startx, starty, columns}
	array <uint> frames = {0, 1};
	
	void logic()
	{

	}
};