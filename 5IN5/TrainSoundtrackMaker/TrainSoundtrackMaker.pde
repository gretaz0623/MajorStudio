import ddf.minim.*;
import ddf.minim.analysis.*;


  
Minim minim;
AudioPlayer basic00,basic01,basic02,basic03,basic04,manSound,trainNoise,theNext,cough,chat;
FFT fft;
 
void setup()
{
  
  
 

size(513,200);
  background(0);
   fill(255);
  textSize(17); 
  text("Use key'y','u','i','o','p' to make a unique train soundtrack,",20,30);
  text("Use key'1','2','3','4','5' to add basic tempo!",20,50);
  text("Record the music if you like!",20,70);

 text("Use key'h','j','k','l',';','q','w','e','r','t'to turn off each sound.",20,180);
  minim = new Minim(this);
  basic00 = minim.loadFile("basic00.mp3");
  basic01 = minim.loadFile("basic01.mp3");
  basic02 = minim.loadFile("basic02.mp3");
  basic03 = minim.loadFile("basic03.mp3");
  basic04 = minim.loadFile("basic04.mp3");
  manSound = minim.loadFile("StandClear.mp3");
  trainNoise = minim.loadFile("trainNoise01.mp3");
  theNext = minim.loadFile("theNextStopIsRemix.mp3");
  cough = minim.loadFile("coughRemix.mp3");
  chat = minim.loadFile("chatting.mp3");
   
}
  
void draw(){
  
 
  if(keyPressed) {
    if (key == '1') {
    basic00.play();
    basic00.loop();

  }
    
   
   if (key == '2') {
    basic01.play();
    basic01.loop();  
    }
   
   
   if (key == '3') {
    basic02.play();
    basic02.loop();  
    }
     
     
    if (key == '4') {
    basic03.play();
    basic03.loop();  
    }
     
     
    if (key == '5') {
    basic04.play();
    basic04.loop();  
    }
     
     
    if (key == 'y' || key == 'Y') {
    manSound.play();
    manSound.loop();
 
    }
    
     if (key == 'u' || key == 'U') {
    trainNoise.play();
    trainNoise.loop();
 
    }
     
     if (key == 'i' || key == 'I') {
    theNext.play();
    theNext.loop();
 
    }
     
     if (key == 'o' || key == 'O') {
    cough.play();
    cough.loop();
 
    }
     
     if (key == 'P' || key == 'p') {
    chat.play();
    chat.loop();
 
    }
    
    //pause basic
  
    if (key == 'q' || key == 'Q') {
    basic00.pause();
    }
     
    if (key == 'w' || key == 'W') {
    basic01.pause();
    }
     
    if (key == 'e' || key == 'E') {
    basic02.pause();
    }
     
    if (key == 'r' || key == 'R') {
    basic03.pause();
    }
     
    if (key == 't' || key == 'T') {
    basic04.pause();
    }
     
    // pasue train noise
    if (key == 'h' || key == 'H') {
    manSound.pause();
    }
    
     if (key == 'j' || key == 'J') {
    trainNoise.pause();
    }
     
     if (key == 'k' || key == 'K') {
    theNext.pause();
    }
    
     if (key == 'l' || key == 'L') {
    cough.pause();
    }
    
     if (key == ';') {
    chat.pause();
    }
     
     
  }
}

 
  
  
 
void stop()
{
  basic00.close();
  basic01.close();
  basic02.close();
  basic03.close();
  basic04.close();
  manSound.close();
  trainNoise.close();
  theNext.close();
  cough.close();
  minim.stop();
  
  super.stop();
}
   
 

 
 
  
  
  
 
 