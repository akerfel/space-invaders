void keyPressed() {
    if (key == 'd') {
        player.startMovingRight();
    }
    else if (key == 'a') {
        player.startMovingLeft();
    }
    else if (key == CODED) {
        if (keyCode == RIGHT) {
            player.startMovingRight();
            
        }
        else if (keyCode == LEFT) {
            player.startMovingLeft();
        }
    }
}

void keyReleased() {
    if (key == 'd') {
        player.stopMovingRight();
    }
    else if (key == 'a') {
        player.stopMovingLeft();
    }
    else if (key == CODED) {
        if (keyCode == RIGHT) {
            player.stopMovingRight();
            
        }
        else if (keyCode == LEFT) {
            player.stopMovingLeft();
        }
    }
}
