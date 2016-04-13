
//R+G+B = white, R+G = cyan, R+B = magenta, G+B = yellow
color white = color(255);
color red = color(#FF0000);
color green = color(#00FF00);
color blue = color(#0000FF);
color yellow = color(#FFFF00);
color magenta = color(#FF00FF);
color cyan = color(#00FFFF);

int length = 500;
class Drop {

    int pos;
    color dropColor;
    Drop(int startPos, color waterDropColor) {

        pos = startPos;
        dropColor = waterDropColor;
    }
    void fall(int rate) {

        pos = pos - rate;
        fill(dropColor);
       // stroke(dropColor);
        if(pos > length) {
            pos = 0;
        }
        if(pos < 0) {
            pos = length;
        }
        ellipse(length/6, pos, 10, 10);

    }
}


int numDrops = 4;
Drop[] redDrops = new Drop[numDrops]; // Declare and create the array
Drop[] greenDrops = new Drop[numDrops]; 
Drop[] blueDrops = new Drop[numDrops]; 
Drop[] whiteDrops = new Drop[numDrops];
Drop[] cyanDrops = new Drop[numDrops];
Drop[] magentaDrops = new Drop[numDrops];
Drop[] yellowDrops = new Drop[numDrops];
void setup() {
    size(600,600);
    smooth();
    //Loop through array to create each object
    for (int i = 0; i < numDrops; i++) {
        int pos = length/numDrops*i;
        redDrops[i] = new Drop(pos, red); // Create each object
        greenDrops[i] = new Drop(pos, green);
        blueDrops[i] = new Drop(pos, blue);
        whiteDrops[i] = new Drop(pos, white);
        cyanDrops[i] = new Drop(pos, cyan);
        magentaDrops[i] = new Drop(pos, magenta);
        yellowDrops[i] = new Drop(pos, yellow);
    }
}

void equals(pos1, pos2) {
    return (abs(pos1-pos2) < 10);
}
void draw(){
    stroke(0); 
    background(white);
    fill(white);
    for(int i = 0; i < numDrops; i++) {

        redDrops[i].fall(uivars.red);
        greenDrops[i].fall(uivars.green);
        blueDrops[i].fall(uivars.blue);

        // cyanDrops[i].fall(uivars.red+uivars.green);
        // magentaDrops[i].fall(uivars.green+uivars.blue);
        // yellowDrops[i].fall(uivars.blue+uivars.red);
       // whiteDrops[i].fall(min(uivars.red, uivars.green, uivars.blue));

    }

    for(int r = 0; r < numDrops; r++) {
        for(int g = 0; g < numDrops; g++) {
            for(int b = 0; b < numDrops; b++) {
                int rPos = redDrops[r].pos;
                int gPos = greenDrops[g].pos;
                int bPos = blueDrops[b].pos;
                // if(redDrops[r].pos ==  greenDrops[g].pos == blueDrops[b].pos) {
                // }

                if(equals(rPos, gPos)) {
                    fill(cyan);
                    ellipse(length/6, rPos, 10, 10);
                    ellipse(length/6, gPos, 10, 10);
                }
                if(equals(rPos, bPos)) {
                    fill(magenta);
                    ellipse(length/6, rPos, 10, 10);
                    ellipse(length/6, bPos, 10, 10);
                }
                if(equals(gPos, bPos)) {
                    fill(yellow);
                    ellipse(length/6, gPos, 10, 10);
                    ellipse(length/6, bPos, 10, 10);
                }
                if(equals(rPos, gPos) && equals(gPos, bPos)) {
                    fill(white);
                    ellipse(length/6, rPos, 10, 10);
                    ellipse(length/6, gPos, 10, 10);
                    ellipse(length/6, bPos, 10, 10);
                }
            }
        }
    }
    //for debugging

}

