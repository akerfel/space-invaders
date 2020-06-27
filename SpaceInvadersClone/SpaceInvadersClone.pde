import java.util.ArrayList;

ArrayList<Alien> aliens;
Alien alien1;
Alien alien2;

void setup() {
    size(896, 1024);
    aliens = new ArrayList<Alien>();
    alien1 = new Alien(50, 50);
    alien2 = new Alien(100, 50);
    aliens.add(alien1);
    aliens.add(alien2);
}

void draw() {
    updateLogic();
    drawEverything();
}
