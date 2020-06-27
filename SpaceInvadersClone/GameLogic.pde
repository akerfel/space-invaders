void updateLogic() {
    updateAliens();
    updateAlienBullets();
    updatePlayer();
}

void updatePlayer() {
    player.update();    
}

void updateAliens() {
    for (Alien alien : aliens) {
        alien.update();    
    }
    if (anyAlienHasHitWall()) {
        for (Alien alien : aliens) {
            alien.invertVelocity();
            alien.goDown();
        }
    }
}

boolean anyAlienHasHitWall() {
    boolean alienHasHitWall = false;
    for (Alien alien : aliens) {
        if (alien.x <= 0 || alien.x + alien.w >= width) {
            alienHasHitWall = true;
        }
    }
    return alienHasHitWall;
}

void createAliens() {
    int rows = 5;
    int columns = 11;

    for (int y = 0; y < rows; y++) {
        for (int x = 0; x < columns; x++) {
            Alien alien = new Alien(50 + x * (Settings.alienWidth + 3 * 4), 200 + y * 40);
            aliens.add(alien);
        }
    }
}

void updateAlienBullets() {
    for (AlienBullet alienBullet : alienBullets) {
        alienBullet.update();    
    }
    removeAlienBulletsOutsideScreen();
}

void removeAlienBulletsOutsideScreen() {
    Iterator<AlienBullet> iterator = alienBullets.iterator();
    while (iterator.hasNext()) {
        AlienBullet alienBullet = iterator.next();
        if (alienBullet.y > height) {
            iterator.remove();   
        }
    }
}
