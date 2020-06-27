void drawEverything() {
    background(0, 0, 0);
    drawAliens();
    drawAlienBullets();
    drawPlayer();
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

void drawPlayer() {
    fill(0, 255, 0);
    rect(player.x, player.y, player.w, player.h);    
}
