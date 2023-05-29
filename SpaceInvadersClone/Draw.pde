void drawEverything() {
    background(0, 0, 0);
    drawAliens();
    drawPlayer();
    drawAlienBullets();
    drawPlayerBullets();
}

void drawAliens() {
    for (Alien alien : aliens) {
        drawAlien(alien);
    }
}

void drawAlien(Alien alien) {
    fill(0, 255, 0);
    rect(alien.x, alien.y, alien.w, alien.h);
}

void drawAlienBullets() {
    for (AlienBullet alienBullet : alienBullets) {
        drawAlienBullet(alienBullet);
    }
}

void drawAlienBullet(AlienBullet alienBullet) {
    fill(255, 0, 0);
    rect(alienBullet.x, alienBullet.y, alienBullet.w, alienBullet.h); // game logic treats
}

void drawPlayerBullets() {
    for (PlayerBullet playerBullet : playerBullets) {
        drawPlayerBullet(playerBullet);
    }
}

void drawPlayerBullet(PlayerBullet playerBullet) {
    fill(100, 0, 255);
    rect(playerBullet.x, playerBullet.y, playerBullet.w, playerBullet.h); // game logic treats
}

void drawPlayer() {
    fill(0, 255, 0);
    rect(player.x, player.y, player.w, player.h);
    rectMode(CENTER);
    rect(player.x + player.w / 2, player.y, 8, 8);
    rectMode(CORNER); // reset to default rectMode
}
