/*****************************************
 * Assignment 4
 * Name:    Jacob Christianson
 * E-mail:  772339@apps.district196.org 
 * Course:      ACS 2020!
 * Submitted:    10/1/2020
 *
 * The main driver program for project 4.
 *
 * This program reads the file specified as the first command line
 * argument, counts the number of words, spaces, and characters and
 * displays the results in the format specified in the project description.
 *
***********************************************/
PImage img;
PImage back;

void setup() {
  size(500,500);
  frameRate(30);
  
  back = loadImage("prison-yard.jpg");
  img = loadImage("PRISON_MIKE.jpg");
  //I'M PRISON MIKE
}

void draw() {
  background(back); //Draw prison background
  image(img, 150, 150, 200, 200); //PRISON MIKE!!!
  
  //Title
  textSize(24);
  fill(59, 61, 61); //Dark blueish - gray
  text("I\'m prison mike!!!", 150, 100);
  
  //Quote
  textSize(18);
  fill(72, 165, 161); //Light blue
  text("\"The worst thing about prison\n           was the dementors\"", 120, 400);
  
  //Prison bars
  noStroke();
  fill(142, 142, 142); //Gray color
  
  rect(120, 360, 260, 15); //Bottom horizontal bar
  rect(120, 120, 260, 15); //Top horizontal bar
  
  //Generate vertical bars
  fill(142, 142, 142); //Set transparency to 0.5
  for (int i = 0; i < 9; i++) {
    rect(i*32.5 + 120, 120, 7, 240);
  }
  
  //Signature
  textSize(20);
  text("ACSCompSciPandemic2020\n      Jacob Christianson", 150, 460);
}
