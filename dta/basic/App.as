final class App
{
    private ObjectManager manager;

    App()
    {
        this.init();
    }

    void init()
    {
        manager.add(Bola());
        manager.add(Fps());       
        manager.prepare();
        showErrors();
        manager.showObjectsInfo();
    }

    void draw()
    {
        game.Vsync();
		game.clearBuffer();
        manager.draw();
        game.Draw();
    }
};