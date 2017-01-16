void drawpage2(){
  hs1.update();
  hs1.display();
  hs1.displayMonth();
  image(img9,455,630);
  textFont(font1);
  textSize(14);
  fill(#FFA000);
  text("消费情况",480,700);
  textFont(font1);
  textSize(20);
  fill(150);
  text("秋季学期各月度消费水平",640,520);
  drawBar(p1,p2,p3,p4,p5,month);
}
void drawBar(float[] p1,float[] p2, float[] p3, float[] p4, float[] p5, int month){
  stroke(200);
  line(200,100,200,465);
  line(190,455,1030,455);
  
  //xAxis
  for(int i = 0; i < 6; i++){            
    line(250 + 150* i, 450, 250+ 150* i, 460);
  }
  for(int i=0;i<5;i++){
    textFont(font2);
    textSize(14);
    fill(180);
    text(barText[i], 325+150*i , 475);    
  }
  


  for(int i = 0; i < 6; i++){
    textFont(font2);
    textSize(14);
    fill(180);
    text( 10000*i, 150 , 450 - 60 * i);
  }
  
  textFont(font2);
  textSize(14);
  fill(180);
  text("地址",  1050, 460);
  
  textFont(font2);
  textSize(14);
  fill(180);
  text("总额/元",  200, 90);
  
  
    noStroke();   //5-12
    fill(#FFC107);
    rect(285,455,75,-p3[month]*350/50000);
    rect(285+150*1,455,75,-p5[month]*350/50000);
    rect(285+150*2,455,75,-p4[month]*350/50000);
    rect(285+150*3,455,75,-p2[month]*350/50000);
    rect(285+150*4,455,75,-p1[month]*350/50000);
  
}

void judgepage2(){
  if(mousePressed&&mouseX>=120&&mouseX<=170&&mouseY>=600&&mouseY<=720){
    b=1;
  }
  if(mousePressed&&mouseX>=760&&mouseX<=810&&mouseY>=600&&mouseY<=720){
    b=3;
  }
  if(mousePressed&&mouseX>=1080&&mouseX<=1130&&mouseY>=600&&mouseY<=720){
    b=4;
  }
}