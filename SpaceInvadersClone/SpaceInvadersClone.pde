import java.util.ArrayList;
import java.util.Iterator;

// This is a clone of the original arcade game "Space Invaders" (released in 1978).
// https://en.wikipedia.org/wiki/Space_Invaders?oldformat=true
// Here is someone elses clone:
// https://www.andoverpatio.co.uk/21/space-invaders/

ArrayList<Alien> aliens;
ArrayList<AlienBullet> alienBullets;
Player player;
boolean gameRunning;

void setup() {
    size(896, 1024);
    aliens = new ArrayList<Alien>();
    alienBullets = new ArrayList<AlienBullet>();
    player = new Player();
    gameRunning = true;
    createAliens();
}

void draw() {
    updateLogic();
    drawEverything();
}
