void pantallas() {

  switch (pant) {
  case 0: 
    explic();
   
    break;

  case 1: 
    gif();
    break; 
    
  case 2: 
    video();
    break;
    
  }
}


void explic() {
  image(glitch,0,0,1000,800);
  filter(BLUR,3);
  textFont(letra1);
  fill(255);
  text("El siguiente programa se encarga de generar una distorsión del rostro. \n" +
  "Se busca la generación de composiciones atractivas visualmente\n" +
  "y que posibiliten la creación de discursos", width/2, height/2);
  textSize(50);
  text("DISTORSIONADOR DE ROSTROS", width/2, height-400);
  textSize(15);
  text("Presiona clic para continuar", width/2, height-40);
}


void gif() {
  image(fondo, 0, 0., width, height);
  textSize(100);
  text("D E S T R Ú Y E T E _ A _ T I _ M I S M O",width/2, height/2);
  textSize(50);
   text("D E S T R Ú Y E T E _ A _ T I _ M I S M O",width/2, height/2-50);
  textSize(15);
  text("Presiona clic para continuar", width/2, height-40);  
}





void video() {
  background(0);
  
   //scale(3);
   video.start();

 
  
  opencv.loadImage(video);

  // scale(3); 
  image(video,0,0,450,220);
  image(video,500,0,500,220);
  image(video,0,240,350,220);
  image(video,320,240,500,220);
  
  
  
  
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);

    // translate(video.width,0);
   
  }
}


void captureEvent(Capture c) {
  c.read();
}

  
  
 