final class ObjectManager
{  
    void prepare()
    {
        for(uint i = 0; i < g_objects.length(); ++i)
		{
			for(uint j = 0; j < g_objects[i].length(); ++j)
			{
                if (config::DEBUG)
                {
                    print("Preparing object: [" + g_objects[i][j].name + "]\n");                                        
                }

                addObject(
                    g_objects[i][j].sheet, 
                    g_objects[i][j].name, 
                    g_objects[i][j].rect[0], 
                    g_objects[i][j].rect[1], 
                    g_objects[i][j].rect[2], 
                    g_objects[i][j].rect[3], 
                    g_objects[i][j].rect[4], 
                    g_objects[i][j].rect[5]
                );
            }
        }
    }

    void add(ObjectBase @object, const int layer = -1)
    {
        if (layer < config::layers::MAX_LAYERS)
        {
            int _layer = (layer <= -1 ? object.layer : layer);
            g_objects[_layer].push_back(object);           
            return;
        }

        print("Object["+object.name+"] Max layers is: " + config::layers::MAX_LAYERS + "\n");
        //throw("Erro");
    }

    void showObjectsInfo()
	{
		for(uint i = 0; i < g_objects.length(); ++i)
		{
			for(uint j = 0; j < g_objects[i].length(); ++j)
			{
				print("Added object [" + g_objects[i][j].name + "] in layer: " + i + "\n");
			}
		}
	}

    void draw()
    {
       for(uint i = 0; i < g_objects.length(); i++)
		{
			for(uint j = 0; j < g_objects[i].length(); j++)
			{
				g_objects[i][j].logic();
				
				if(g_objects[i][j].visible)
				{									
					drawAnimate(
                        g_objects[i][j].name, 
                        g_objects[i][j].frames[0], 
					    g_objects[i][j].frames[1], 
                        g_objects[i][j].pos.x, 
					    g_objects[i][j].pos.y, 
                        g_objects[i][j].delay
                    );					
				}
			}
		}
    }
};