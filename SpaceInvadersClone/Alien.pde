public class Alien {
    int x;
    int y;
    int vx;
    int w;    // width
    int h;    // height
    int jumpHeight;
    
    public Alien(int x, int y) {
        this.x = x;
        this.y = y;
        vx = 5;
        w = 11 * 4;
        h = 8 * 4;
        jumpHeight = 15;
    }
    
    public void updatePosition() {
        x += vx;
    }
    
    public void invertVelocity() {
        vx *= -1;
    }
    
    public void goDown() {
        y += jumpHeight;
    }
}
