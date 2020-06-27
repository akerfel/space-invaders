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
        dropHeight = 15;
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
