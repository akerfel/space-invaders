void keyPressed() {
    if (key == CODED) {
        if (keyCode == RIGHT) {
            player.startMovingRight();
            
        }
        else if (keyCode == LEFT) {
            player.startMovingLeft();
        }
    }
}

void keyReleased() {
    if (key == CODED) {
        if (keyCode == RIGHT) {
            player.stopMovingRight();
            
        }
        else if (keyCode == LEFT) {
            player.stopMovingLeft();
        }
    }
}
