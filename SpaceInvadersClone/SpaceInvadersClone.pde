import java.util.ArrayList;

// I am creating something similar to this game
// https://www.andoverpatio.co.uk/21/space-invaders/
// The original arcade game was released in 1978
// https://en.wikipedia.org/wiki/Space_Invaders?oldformat=true

ArrayList<Alien> aliens;

void setup() {
    size(896, 1024);
    aliens = new ArrayList<Alien>();
    createAliens();
}

void draw() {
    updateLogic();
    drawEverything();
}
