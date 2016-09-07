import ddf.minim.*;
import ddf.minim.signals.*;
String playMusic = "ture";
Minim minim;
AudioPlayer mySound;
 
void setup(){
    frameRate(30);
  size(513, 200,P3D);
  noStroke();
  rectMode(CENTER);
  minim = new Minim(this);
  mySound = minim.loadFile("Remix02.mp3");
  mySound.play();
  mySound.loop();
}


int n=0;
void draw(){
  background(0,20);
translate(width/2, height/2);
  for(int i = 0; i < mySound.bufferSize() - 1; i++)  {

    //float leftLevel = mySound.left.level() * 100;


    fill(#f9b517,6);
    float leftLevel = mySound.left.level() * 100;
    ellipse(i/100,i/100,leftLevel*3,10);
    
    rotate(n+PI/3*0.01);
    fill(#cccccc);
    float rightLevel02 = mySound.right.level() * 100;
    rect(i*0.3,i,rightLevel02/10,rightLevel02);
    
    rotate(n+PI/3*0.01);
    fill(#0c72de);
    float rightLevel = mySound.right.level() * 10;
    rect(i/10,i/10,rightLevel,rightLevel);
    
  }
  n+= 2;
}
 
//mute out
void keyPressed(){
  if (key == ' ' && playMusic == "ture" ) {
    playMusic = "false";
    mySound.pause();
    }else if (key == ENTER && playMusic == "false"){
    playMusic = "ture";
    mySound.play();
    mySound.loop();
 
    }

  }

 
void stop(){
  mySound.close();
  minim.stop();
  super.stop();
}