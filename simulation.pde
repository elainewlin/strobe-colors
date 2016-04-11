
color white = color(255);

class Rain {
    float y = 0; 
    void fall() {
        y = y + uivars.red;
        fill(0,10,200,180);
        ellipse(200, 100, 10, 10);

        ellipse(200, y, 10, 10);
    }
}

Rain r1;

int numDrops = 10;
Rain[] drops = new Rain[numDrops]; // Declare and create the array

void setup() {
    size(600,600);
    background(white);
    smooth();
    noStroke();
    //Loop through array to create each object
    for (int i = 0; i < drops.length; i++) {

    drops[i] = new Rain(); // Create each object
    r1 = new Rain();
    }
}

void draw(){
    stroke(0); 
    background(white);
    fill(white);
    rect(0,0,500,500);
    //Loop through array to use objects.
    for (int i = 0; i < drops.length; i++) {
        drops[i].fall();
    }
}

