void updateLogic() {
    if (gameRunning) {
        updateAliens();
        updatePlayer();
        updateAlienBullets();
        updatePlayerBullets();
        checkIfPlayerHitByBullet();
        checkIfAlienHitByBullet();
    }
}

void updatePlayer() {
    player.update();    
}

void checkIfPlayerHitByBullet() {
    for (AlienBullet bullet : alienBullets) {
        // If collision detected: game over
        if (player.x < bullet.x + bullet.w &&
           player.x + player.w > bullet.x &&
           player.y < bullet.y + bullet.h &&
           player.y + player.h > bullet.y) {
              gameOver();
        }
    }
}

void checkIfAlienHitByBullet() {
    Iterator<Alien> alienIterator = aliens.iterator();
    while (alienIterator.hasNext()) {
        Alien alien = alienIterator.next();
        Iterator<PlayerBullet> bulletIterator = playerBullets.iterator();
        while (bulletIterator.hasNext()) {
            PlayerBullet bullet = bulletIterator.next();
            if (alien.x < bullet.x + bullet.w &&
               alien.x + alien.w > bullet.x &&
               alien.y < bullet.y + bullet.h &&
               alien.y + alien.h > bullet.y) {
                  alienIterator.remove();
                  bulletIterator.remove();
            }
        }
    }
}

void updateAliens() {
    for (Alien alien : aliens) {
        alien.update();    
    }
    if (anyAlienHasHitsVerticalWall()) {
        for (Alien alien : aliens) {
            alien.invertVelocity();
            alien.goDown();
        }
    }
    if (anyAlienHasHitsHorizontalWall()) {
        gameOver();
    }
}

void gameOver() {
    gameRunning = false;
}

boolean anyAlienHasHitsVerticalWall() {
    boolean alienHasHitWall = false;
    for (Alien alien : aliens) {
        if (alien.x <= 0 || alien.x + alien.w >= width) {
            alienHasHitWall = true;
        }
    }
    return alienHasHitWall;
}

boolean anyAlienHasHitsHorizontalWall() {
    boolean alienHasHitWall = false;
    for (Alien alien : aliens) {
        if (alien.y + alien.h >= height) {
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
            Alien alien = new Alien(50 + x * (Settings.alienWidth + 3 * 4), 50 + y * 40);
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

void updatePlayerBullets() {
    for (PlayerBullet playerBullet : playerBullets) {
        playerBullet.update();    
    }   
    removePlayerBulletsOutsideScreen();
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

void removePlayerBulletsOutsideScreen() {
   Iterator<PlayerBullet> iterator = playerBullets.iterator();
    while (iterator.hasNext()) {
        PlayerBullet playerBullet = iterator.next();
        if (playerBullet.y < 0) {
            iterator.remove();   
        }
    } 
}

void createNewPlayerBullet() {
    if (playerBullets.size() < Settings.playerBulletsConcurrentMaxAmount) {
        playerBullets.add(new PlayerBullet(player.x + player.w/2, player.y));   
    }
}
