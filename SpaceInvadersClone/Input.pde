void keyPressed() {
    if (key == 'd') {
        player.startMovingRight();
    } else if (key == 'a') {
        player.startMovingLeft();
    }
    if (key == ' ') {
        createNewPlayerBullet();
    }
    if (key == CODED) {
        if (keyCode == RIGHT) {
            player.startMovingRight();
        } else if (keyCode == LEFT) {
            player.startMovingLeft();
        }
    }
}

void keyReleased() {
    if (key == 'd') {
        player.stopMovingRight();
    } else if (key == 'a') {
        player.stopMovingLeft();
    }

    if (key == CODED) {
        if (keyCode == RIGHT) {
            player.stopMovingRight();
        } else if (keyCode == LEFT) {
            player.stopMovingLeft();
        }
    }
}
