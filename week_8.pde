


import processing.video.*;
import controlP5.*;
ControlP5 cp5;

Movie my_video;

int vid_w;
int vid_h;

float aspectRatio;
float mPosition;

void setup() {
  size(640,410);
  
  background(0);
  
  //Load and play the video in a loop
  my_video = new Movie(this,"170724_15_Setangibeach.mp4");
  my_video.play();
  cp5=new ControlP5 (this);
  
  //create a new button with name 'buttonA'
  cp5.addButton("Play")
  .setValue(0)
.setPosition(0,height-30)
.setSize(140,30);

//create a new button with name 'buttonA'
cp5.addButton("Stop")
  .setValue(0)
.setPosition(141,height-30)
.setSize(140,30);

cp5.addButton("Pause")
  .setValue(0)
  .setPosition(282,height-30)
  .setSize(100,30);
}






//Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}

void Play () {
  my_video.jump(0);
  my_video.play();
  }
  
  void Stop () {
    my_video.stop();
    my_video.jump(0);
  }
  
  void Pause () {
    my_video.stop();
    
  }

void draw() {
  image(my_video,0,0,width,height-30);
}