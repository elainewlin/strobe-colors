class Rain {
float r = random(600);
float y = 0; 


void fall() {
 fill(255,100);
 rect(0,0,600,600);
 y = y + 7;
 fill(0,10,200);
 ellipse(r, y, 10, 10);

}}

Rain r1;

void setup() {
 size(600,600);
 background(255);
 smooth();
 noStroke();
 r1 = new Rain();
}

void draw(){
 r1.fall();
}

