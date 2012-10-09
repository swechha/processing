PVector[][] gridstart = new PVector[50][50];
PVector[][] gridend = new PVector[50][50];
PVector mouse;
PVector prev_pos;
int flag;

void setup()
{
  size(500,500);
  
  for(int i=0;i<50;i++)
  {
    for(int j=0;j<50;j++)
    {
      gridstart[i][j]=new PVector(i*10,j*10);     
      gridend[i][j]=new PVector(7,0);
    }
  }
  prev_pos = new PVector(0,0);
  stroke(255,0,255);
}

void draw()
{
  float distance;
  background(255,210,210);
  
  if(mouseX>prev_pos.x && mouseY>prev_pos.y)
    flag=1;
  else if(mouseX>=prev_pos.x && mouseY<=prev_pos.y)
    flag=2;
  else if(mouseX<=prev_pos.x && mouseY>=prev_pos.y)
    flag=3;
  else
    flag=4;
    
  if(flag==1)
  {
    for(int i=0;i<50;i++)
    {
      for(int j=0;j<50;j++)
      {
        mouse = new PVector(mouseX,mouseY);
        mouse.sub(gridstart[i][j]);
        distance=dist(mouseX,mouseY,gridstart[i][j].x,gridstart[i][j].y);
        if(distance<=30 && gridstart[i][j].x<=mouseX+5 && gridstart[i][j].y<=mouseY+5)
        {
          mouse.limit(7);
          gridend[i][j].x=mouse.x;
          gridend[i][j].y=mouse.y;
        }
        pushMatrix();
        translate(gridstart[i][j].x,gridstart[i][j].y);
        noStroke();
        fill(255,0,255);
        ellipse(0,0,2,2);
        stroke(255,0,255);
        line(0,0,gridend[i][j].x,gridend[i][j].y);
        popMatrix();
      }
    }
  }
  
  else if(flag==2)
  {
    for(int i=0;i<50;i++)
    {
      for(int j=0;j<50;j++)
      {
        mouse = new PVector(mouseX,mouseY);
        mouse.sub(gridstart[i][j]);
        distance=dist(mouseX,mouseY,gridstart[i][j].x,gridstart[i][j].y);
        if(distance<=30 && gridstart[i][j].x<=mouseX && gridstart[i][j].y>mouseY)
        {
          mouse.limit(7);
          gridend[i][j].x=mouse.x;
          gridend[i][j].y=mouse.y;
        }
        pushMatrix();
        translate(gridstart[i][j].x,gridstart[i][j].y);
        noStroke();
        fill(255,0,255);
        ellipse(0,0,2,2);
        stroke(255,0,255);
        line(0,0,gridend[i][j].x,gridend[i][j].y);
        popMatrix();
      }
    }
  }
  
  else if(flag==3)
  {
    for(int i=0;i<50;i++)
    {
      for(int j=0;j<50;j++)
      {
        mouse = new PVector(mouseX,mouseY);
        mouse.sub(gridstart[i][j]);
        distance=dist(mouseX,mouseY,gridstart[i][j].x,gridstart[i][j].y);
        if(distance<=30 && gridstart[i][j].x>mouseX && gridstart[i][j].y<=mouseY)
        {
          mouse.limit(7);
          gridend[i][j].x=mouse.x;
          gridend[i][j].y=mouse.y;
        }
        pushMatrix();
        translate(gridstart[i][j].x,gridstart[i][j].y);
        noStroke();
        fill(255,0,255);
        ellipse(0,0,2,2);
        stroke(255,0,255);
        line(0,0,gridend[i][j].x,gridend[i][j].y);
        popMatrix();
      }
    }
  }
  
  else if(flag==4)
  {
    for(int i=0;i<50;i++)
    {
      for(int j=0;j<50;j++)
      {
        mouse = new PVector(mouseX,mouseY);
        mouse.sub(gridstart[i][j]);
        distance=dist(mouseX,mouseY,gridstart[i][j].x,gridstart[i][j].y);
        if(distance<=30 && gridstart[i][j].x>=mouseX && gridstart[i][j].y>=mouseY)
        {
          mouse.limit(7);
          gridend[i][j].x=mouse.x;
          gridend[i][j].y=mouse.y;
        }
        pushMatrix();
        translate(gridstart[i][j].x,gridstart[i][j].y);
        noStroke();
        fill(255,0,255);
        ellipse(0,0,2,2);
        stroke(255,0,255);
        line(0,0,gridend[i][j].x,gridend[i][j].y);
        popMatrix();
      }
    }
  }
  prev_pos.x=mouseX;
  prev_pos.y=mouseY;
}
