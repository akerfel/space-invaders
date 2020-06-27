void drawEverything() {
    background(0, 0, 0);
    drawAliens();
}

void drawAliens() {
    for (Alien alien : aliens) {
        drawAlien(alien);
    }
}

void drawAlien(Alien alien) {
    rect(alien.x, alien.y, alien.w, alien.h);    
}
