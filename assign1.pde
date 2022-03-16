PImage bg;
PImage soil;
PImage life;
PImage groundhog;
PImage soldier;
PImage robot;
int soliderX,soliderY;
int  robotX,robotY;
int  laserStart,move,laserY,moveRight;

void setup(){
  
  size(640,480);
  bg=loadImage("img/bg.jpg");
  groundhog=loadImage("img/groundhog.png");
  life=loadImage("img/life.png");
  soil=loadImage("img/soil.png");
  soldier=loadImage("img/soldier.png");
  robot=loadImage("img/robot.png"); 
  
  //background 
  image(bg,0,0);
  image(life,10,10);
  image(life,80,10);
  image(life,150,10);
  
  //grass
  fill(124,204,25);
  noStroke();
  rect(0,145,640,400);
  
  //move
  soliderY = floor(random(2,6));//soldier's fioor
  robotX = floor(random(2,8));//robot from160 to 560
  robotY= floor(random(2,6));
  
  //laser
  laserStart=((robotX*80)-15);//line's right end
  laserY= robotY*80+37;
}

void draw(){
  
  image(groundhog,280,80);
  image(soil,0,160);
    
  //sun
  stroke(255,255,0);
  strokeWeight(5);
  fill(253,184,19);
  ellipse(590,50,120,120);
  
  //soldier
  soliderX++;
  soliderX%=640;

  image(soldier,soliderX-80,80*soliderY);
  
  //robot
  image(robot,robotX*80,robotY*80);
  
  //laser
  stroke(255,0,0);
  strokeWeight(10);
  line(laserStart+move+40,laserY,laserStart+40+moveRight,laserY);
  move-=2;
  move%=185;
  moveRight-=2;
  moveRight%=185;//160+25.just move 185
  if(move>-40){
    moveRight=0;
  }
}
