import gab.opencv.*;
import processing.video.*;
import java.awt.*;
import processing.sound.*; 
import gifAnimation.*;

int pant;
PFont letra1; 
PImage glitch;
Gif fondo,fondo2;
 
boolean boo= false; 

SoundFile uno;
Capture video;
OpenCV opencv;

 


void setup() {

  size(1000, 480);

  letra1 = createFont("Rockwell", 20);

  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this,  640/2, 480/2);
  
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 

  //opencv.loadCascade(OpenCV.CASCADE_EYE);  
  //opencv.loadCascade(OpenCV.CASCADE_NOSE); 
  //opencv.loadCascade(OpenCV.CASCADE_MOUTH); 
 

  
  uno = new SoundFile(this, "2.mp3");
  uno.amp(0.03);
  uno.play();

  glitch = loadImage("3.jpg");
  
  fondo = new Gif(this, "2.gif");
  fondo.play();

}


void draw() {
  textAlign(CENTER, CENTER);
  pantallas();
}


void mouseReleased() {
  if (pant<2) {
    pant++;
  }
}