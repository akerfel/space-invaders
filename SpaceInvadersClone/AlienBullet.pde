public class AlienBullet {
    int x;
    int y;
    int w;
    int h;
    int vy;

    public AlienBullet(int x, int y) {
        this.x = x;
        this.y = y;
        this.w = Settings.alienBulletWidth;
        this.h = Settings.alienBulletHeight;
        this.vy = Settings.alienBulletSpeed;
    }

    public void update() {
        y += vy;
    }
}
