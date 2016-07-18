void setup(){
size(500,500);
background(102,06,170);
}
void draw(){

  rect(40,60,40,50);
  ellipse(mouseX,mouseY,70,50);
triangle(30,75, 50, 60, 70, 80);
if(mousePressed){
fill(000,000,170);}
else{
text("Grace", 450,450,450);
}
}


