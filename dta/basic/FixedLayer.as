class FixedLayer : ObjectBase
{
    FixedLayer()
    {
        name = "FixedLayer";
        layer = (config::layers::MAX_LAYERS - 1);
        fixed = true;        
    }
};