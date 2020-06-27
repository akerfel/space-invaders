public class Alien {
    int x;
    int y;
    int vx;
    int w;    // width
    int h;    // height
    int dropHeight;
    
    public Alien(int x, int y) {
        this.x = x;
        this.y = y;
        vx = Settings.alienSpeed;
        w = Settings.alienWidth;
        h = Settings.alienHeight;
        dropHeight = Settings.alienDropHeight;
    }
    
    public void update() {
        updatePosition();
        maybeShoot();
    }
    
    public void maybeShoot() {
        float chanceForAlienToShootEachFrame = 0.03;
        if (random(0, 100) < chanceForAlienToShootEachFrame) {
            alienBullets.add(new AlienBullet(this.x + this.w/2, this.y + this.h));
        }
    }
    
    public void updatePosition() {
        x += vx;
    }
    
    public void invertVelocity() {
        vx *= -1;
    }
    
    public void goDown() {
        y += dropHeight;
    }
}
