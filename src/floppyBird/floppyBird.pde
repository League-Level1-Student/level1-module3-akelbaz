int pipeX=500;
int score=0;
int lowerY;
int flopY=375;
int flopYVelocity=15;
int gravity=2;
int pipeSpeed=5;
int upperPipeHeight = (int) random(100, 400);
int pipeGap=200;
     PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;
void setup(){
size(750,750);

 back = loadImage("flappyBackground.jpg");
            pipeBottom = loadImage("bottomPipe.png");
            pipeTop = loadImage("topPipe.png");
            bird = loadImage("bird.png");
            bird.resize(25,25);
pipe();
}
void draw(){
background(#1CD9FC);
pipe();
intersectsPipes();
fill(#F5EA74);
//ellipse(50, flopY, 25, 25);
image (bird, 250, flopY);
flopY+=gravity;
if(mousePressed){
flopY-=flopYVelocity;
}
if(intersectsPipes()==true||flopY<=0||flopY>=750){
exit();
print("YOU LOSE-SCORE: "+score);
}
}
void pipe(){
fill(#4CE52E);
//rect(pipeX, 0, 50, upperPipeHeight);
image (pipeTop,pipeX,0);
pipeX-=pipeSpeed;
if(pipeX<=0){
pipeX=750;
 upperPipeHeight = (int) random(100, 400);
 score++;
}
lowerY = upperPipeHeight + pipeGap;
//rect(pipeX,lowerY,50,750-lowerY);
            image (pipeBottom,pipeX,lowerY);

fill(0);
text(score,pipeX,50);
}
boolean intersectsPipes() { 
         if (flopY < upperPipeHeight && 50 > pipeX && 50 < (pipeX+50)){
            return true; }
        else if (flopY>lowerY && 50 > pipeX && 50 < (pipeX+50)) {
            return true; }
        else { return false; }
}
