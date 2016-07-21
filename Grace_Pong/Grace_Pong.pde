PImage backgroundImage;
import ddf.minim.*;  
  Minim minim; 
    AudioSample sound;      

int  x = 100;
int speedx = 4;
int y = 50;
int speedy = 5;


void setup(){
backgroundImage = loadImage("PingPaddle.jpg");
 size(700,700);
 
minim = new Minim (this);  
 sound = minim.loadSample("pingpongsound.wav");
}
void draw(){
  image(backgroundImage, 0,0,700,700);
rect(mouseX,675,100, 50);

ellipse(x,y, 50,50);
fill(85,204,034);
stroke(102,034,204);
x = x +speedx;
if ( x == 700){
   speedx = -speedx;  
}

else if ( x==0){
  speedx = -speedx;
}
  y= y +speedy;
  if ( y == 700){
    speedy = -speedy;
    sound.trigger();  
  }
  
  else if (y ==0){
    speedy = -speedy;
  }
}
  
  
  
  
  boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;


  }

  
  
    


 
 








