final class Bola : ObjectBase
{
    Bola()
    {
        pos.x = 30;
        pos.y = 0;
        name = "Bola";
        sheet = "addon/bola/img/sphere.bmp";
		rect = {32, 64, 64, 0, 0, 8}; // {frames, w, h, startx, starty, columns}
		frames = {0, 32};
		delay = 30;
    }
}