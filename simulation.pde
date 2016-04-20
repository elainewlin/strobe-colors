import java.util.Map;

//R+G+B = white, R+G = cyan, R+B = magenta, G+B = yellow
color white = color(255);
color black = color(0);
color red = color(#FF0000);
color green = color(#00CC00);
color blue = color(#0000FF);
color yellow = color(#FFFF00);
color magenta = color(#FF00FF);
color cyan = color(#00FFFF);

int length = 600;
int dropSize = 30;
int addPos = length/4;
int subPos = 3*length/4;

    

HashMap<Integer,Integer> addColors = new HashMap<Integer,Integer>();
addColors.put(1, cyan);
addColors.put(2, magenta);
addColors.put(3, yellow);

HashMap<Integer,Integer> subColors = new HashMap<Integer,Integer>();
subColors.put(1, red);
subColors.put(2, green);
subColors.put(3, blue);

class Drop {

    int pos;
    color dropColor;
    Drop(int startPos, color waterDropColor) {

        pos = startPos;
        dropColor = waterDropColor;
    }
    void addFall(int rate) {
        pos = pos - rate;
        fill(dropColor);
       // stroke(dropColor);
        if(pos > length) {
            pos = 0;
        }
        if(pos < 0) {
            pos = length;
        }
        ellipse(addPos, pos, dropSize, dropSize);
    }
    void subFall(int rate) {
        pos = pos - rate;
        fill(dropColor);
       // stroke(dropColor);
        if(pos > length) {
            pos = 0;
        }
        if(pos < 0) {
            pos = length;
        }
        ellipse(subPos, pos, dropSize, dropSize);
    }
}


int numDrops = 5;
Drop[] redDrops = new Drop[numDrops]; // Declare and create the array
Drop[] greenDrops = new Drop[numDrops]; 
Drop[] blueDrops = new Drop[numDrops]; 
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
        cyanDrops[i] = new Drop(pos, cyan);
        magentaDrops[i] = new Drop(pos, magenta);
        yellowDrops[i] = new Drop(pos, yellow);
    }
}

void equals(pos1, pos2) {
    return (abs(pos1-pos2) < dropSize/4);
}

float[] dropSpeeds = new float[]{abs(uivars.red), abs(uivars.green), abs(uivars.blue)};
int getSlowerDrop(int i, int j) {
    if(dropSpeeds[i] < dropSpeeds[j]) {
        return i;
    }
    else {
        return j;
    }
}

int getSlowestDrop() {
    int minIndex = 0;
    float minSpeed = min(dropSpeeds);
    for(int i = 0; i < 3; i++) {
        if(dropSpeeds[i] == minSpeed) {
            return i;
        }
    }
}

void draw(){
    stroke(0); 
    background(white);
    fill(white);
    for(int i = 0; i < numDrops; i++) {

        redDrops[i].addFall(uivars.red);
        greenDrops[i].addFall(uivars.green);
        blueDrops[i].addFall(uivars.blue);

        cyanDrops[i].subFall(uivars.blue);
        magentaDrops[i].subFall(uivars.green);
        yellowDrops[i].subFall(uivars.red);
    }
    
    for(int r = 0; r < numDrops; r++) {
        for(int g = 0; g < numDrops; g++) {
            for(int b = 0; b < numDrops; b++) {
                int[] rgbPos = new int[] {redDrops[r].pos, greenDrops[g].pos, blueDrops[b].pos};
                for(int i = 0; i < 2; i++) {
                    for(int j = i+1; j < 3; j++) {
                        if(equals(rgbPos[i], rgbPos[j])) {
                            fill(addColors.get(i+j));
                            int index = getSlowerDrop(i, j);
                            ellipse(addPos, rgbPos[index], dropSize, dropSize);
                            fill(subColors.get(i+j));
                            ellipse(subPos, rgbPos[index], dropSize, dropSize);
                        }
                    }
                }
            }
        }
    }
    for(int r = 0; r < numDrops; r++) {
        for(int g = 0; g < numDrops; g++) {
            for(int b = 0; b < numDrops; b++) {
                int[] rgbPos = new int[] {redDrops[r].pos, greenDrops[g].pos, blueDrops[b].pos};
                int minIndex = getSlowestDrop();
                if(equals(rgbPos[0], rgbPos[1]) && equals(rgbPos[0], rgbPos[2]) && equals(rgbPos[1], rgbPos[2])) {
                    fill(white);
                    ellipse(addPos, rgbPos[minIndex], dropSize, dropSize);
                    fill(black);
                    ellipse(subPos, rgbPos[minIndex], dropSize, dropSize);
                }
            }
        }
    }

}

