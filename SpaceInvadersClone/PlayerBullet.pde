public class PlayerBullet {
    int x;
    int y;
    int w;
    int h;
    int vy;
    
    public PlayerBullet(int x, int y) {
        this.x = x;
        this.y = y;
        this.w = Settings.playerBulletWidth;
        this.h = Settings.playerBulletHeight;
        this.vy = Settings.playerBulletSpeed;
    }
    
    public void update() {
        y -= vy;
    }
}
