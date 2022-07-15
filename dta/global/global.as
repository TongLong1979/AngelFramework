namespace config
{
    const bool DEBUG = false;
    
    namespace layers
    {
        const int MAX_LAYERS = 4;
    }
}

// Global error var
array <string> g_errors;

// Global array of objects 
array <array<ObjectBase@>> g_objects(config::layers::MAX_LAYERS);