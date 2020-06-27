public class Player {
    int x;
    int y;
    int w;
    int h;
    int vx;
    boolean isMovingRight;
    boolean isMovingLeft;
    
    
    public Player() {
        this.x = Settings.playerStartX;
        this.y = Settings.playerStartY;
        this.w = Settings.playerWidth;
        this.h = Settings.playerHeight;
        this.vx = Settings.playerSpeed;
    }
    
    void update() {
        if (isMovingRight && x + w < width) {
            x += vx;
        }
        else if (isMovingLeft && x > 0) {
            x -= vx;    
        }
    }
    
    void startMovingRight() {
        isMovingRight = true;
        isMovingLeft = false;
    }
    
    void startMovingLeft() {
        isMovingLeft = true;
        isMovingRight = false;
    }
    
    void stopMovingRight() {
        isMovingRight = false;    
    }
    
    void stopMovingLeft() {
        isMovingLeft = false;    
    }
}
