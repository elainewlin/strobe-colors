
//R+G+B = white, R+G = cyan, R+B = magenta, G+B = yellow
color white = color(255);
color red = color(#FF0000);
color green = color(#00FF00);
color blue = color(#0000FF);
color cyan = color(#FFFF00);
color magenta = color(#FF00FF);
color yellow = color(#00FFFF);

int length = 500;
class Drop {
    int pos;
    color dropColor;
    Drop(int startPos, color waterDropColor) {

        pos = startPos;
        dropColor = waterDropColor;
    }

    void fall(int rate) {
        pos = pos + rate;
        fill(dropColor);
       // stroke(dropColor);
        if(pos > length) {
            pos = 0;
        }
        ellipse(length/2, pos, 10, 10);

    }
}


int numDrops = 20;
Drop[] redDrops = new Drop[numDrops]; // Declare and create the array
Drop[] greenDrops = new Drop[numDrops]; 
Drop[] blueDrops = new Drop[numDrops]; 
void setup() {
    size(600,600);
    smooth();
    //Loop through array to create each object
    for (int i = 0; i < numDrops; i++) {
        redDrops[i] = new Drop(i*20, red); // Create each object
        greenDrops[i] = new Drop(i*20, green);
        blueDrops[i] = new Drop(i*20, blue);
    }
}

void draw(){
    stroke(0); 
    background(white);
    fill(white);
    rect(0,0,length,length);

    for (int i = 0; i < numDrops; i++) {
        redDrops[i].fall(uivars.red);
        greenDrops[i].fall(uivars.green);
        blueDrops[i].fall(uivars.blue);
    }
}

