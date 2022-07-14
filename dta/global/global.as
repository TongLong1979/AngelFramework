namespace config
{
    const bool DEBUG = true;
    
    namespace layers
    {
        const int MAX_LAYERS = 4;
    }
}

array <array<ObjectBase@>> g_objects(config::layers::MAX_LAYERS);