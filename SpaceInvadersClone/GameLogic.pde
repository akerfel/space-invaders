void updateLogic() {
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
        alien.updatePosition();    
        if (alien.x <= 0 || alien.x + alien.w >= width) {
            alienHasHitWall = true;
        }
    }
    return alienHasHitWall;
}
