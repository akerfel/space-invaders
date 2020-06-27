import java.util.ArrayList;
import java.util.Iterator;

// This is a clone of the original arcade game "Space Invaders" (released in 1978).
// https://en.wikipedia.org/wiki/Space_Invaders?oldformat=true
// Here is someone elses clone:
// https://www.andoverpatio.co.uk/21/space-invaders/

ArrayList<Alien> aliens;
Player player;
ArrayList<AlienBullet> alienBullets;
ArrayList<PlayerBullet> playerBullets;
boolean gameRunning;

void setup() {
    size(896, 1024);
    aliens = new ArrayList<Alien>();
    player = new Player();
    alienBullets = new ArrayList<AlienBullet>();
    playerBullets = new ArrayList<PlayerBullet>();
    gameRunning = true;
    createAliens();
}

void draw() {
    updateLogic();
    drawEverything();
}
