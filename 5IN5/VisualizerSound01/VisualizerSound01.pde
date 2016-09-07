import ddf.minim.*;
import ddf.minim.analysis.*;
String playMusic = "ture";
Minim minim;
AudioPlayer song;
FFT fft;

Minim minim2;
AudioPlayer song2;
FFT fft2;

Minim minim3;
AudioPlayer song3;
FFT fft3;

Minim minim4;
AudioPlayer song4;
FFT fft4;

void setup(){
   
  size(513,200);
  background(0);
  minim = new Minim(this);
  song = minim.loadFile("basic00.mp3");
  song.loop();
  
  minim2 = new Minim(this);
  song2 = minim2.loadFile("StandClear.mp3");
  song2.loop();
  
  minim3 = new Minim(this);
  song3 = minim3.loadFile("basic01.mp3");
  song3.loop();
  
  minim4 = new Minim(this);
  song4 = minim4.loadFile("trainNoise01.mp3");
  song4.loop();
  
  fft = new FFT(song.bufferSize(), song.sampleRate());
  fft2 = new FFT(song2.bufferSize(), song2.sampleRate());
  fft3 = new FFT(song3.bufferSize(), song3.sampleRate());
  fft4 = new FFT(song4.bufferSize(), song3.sampleRate());
}

void lines(){
  int Add = 0;
  fill(0,60);
  rect(0,0,width,height);
  
  fft.forward(song.mix);
  fft2.forward(song2.mix);
  fft3.forward(song3.mix);
  fft3.forward(song4.mix);
   
   for(int j = 0; j<fft.specSize(); j+= 20){
   noStroke();

    rect(width-j-10*fft3.getBand(j+20)-160,height/2+33-10*fft3.getBand(j)-30,1,10);
    rect(width-j-10*fft3.getBand(j+20)+340,height/2+33-10*fft3.getBand(j)-30,1,10);
    fill(#cccccc);
    //big beat
    //float left03 = 0;
    //left03 = song2.left.get(j);
    //left03 = map(left03,-1,1,0,200);
    
    //float right03 = 0;
    //right03 = song2.right.get(j);
    //right03 = map(right03,-1,1,0,200);
    
    //Add ++;
    //noStroke();
    //right03 = right03+Add;
    //fill(256,256,256);
    //ellipse(right03,left03,3,3);
  }
   
  for(int i = 0; i<fft.specSize(); i++){
    noStroke();

//    ellipse(width-i-10*fft2.getBand(i),height/2+30-10*fft2.getBand(i),2,2);
//    fill(255,50);
//    ellipse(width-i+2,height/2-100*fft.getBand(i),2,2);
//    fill(0,0,255,50);
//    ellipse(i,height/3-10*fft.getBand(i),3,3);
  
    float left = 0;
    left = song.left.get(i);
    left = map(left*10,-1,1,0,200);
    
    float right = 0;
    right = song.right.get(i);
    right = map(right*10,-1,1,0,200);
    
    Add++;
    noStroke();
    right = right+Add;
    fill(#0c72de);
    ellipse(right-100,left,2,2);
  }
  
  for(int a = 0; a<fft.specSize(); a++){
    noStroke();
    //trainNoise
    float left02 = 0;
    left02 = song4.left.get(a);
    left02 = map(left02*2,-1,1,0,200);
    
    float right02 = 0;
    right02 = song4.right.get(a);
    right02 = map(right02*2,-1,1,0,200);
    
    Add += 70;
    stroke(#f9b517,90);
    right02 = right02+Add;
    fill(0,10);
    ellipse(right02-800,left02+5,40,40);
  }
  
  
   

}

void draw(){
 lines();
 
if(keyPressed){

  if (key == ' ' && playMusic == "ture" ) {
    playMusic = "false";
    song.pause();
    song2.pause();
    song3.pause();
    song4.pause();
    }else if (key == ENTER && playMusic == "false"){
    playMusic = "ture";
    song.play();
    song2.play();
    song3.play();
    song4.play();
    
    song.loop();
    song2.loop();
    song3.loop();
    song4.loop();
    }
}
}



void stop()
{
  song.close();
   song2.close();
   song3.close();
    song4.close();
  minim.stop();
  super.stop();
}