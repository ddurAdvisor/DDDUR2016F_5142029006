void drawpage1(){
 // getPieChartData1();
//  getPeopleData1();
  peopleChartMode();
  peopleChartdraw();
  peopleChart(4,1);//data's too big to run,so i showed the result
  image(img6,135,630);  
  textFont(font1);
  textSize(14);
  fill(#FFA000);
  text("基础信息",160,700);
  if(mousePressed){
    println(mouseX,mouseY);
    println(c);
  }

//  float total = bachelor_1+ master_1+ phd_1;
 // angles[0] = bachelor_1*360/total;
 // angles[1] = master_1*360/total;
//  angles[2] = 360-angles[0]-angles[1];
  angles[0]= 360* 0.4667;
  angles[1]=360*0.3333;
  angles[2]=360*0.2;
  piechart(195,angles);

  
  textFont(font1);
  textSize(30);
  fill(200);
  text("人数分布",640,80);
  text("性别分布",640,420);
    
  textFont(font1);
  textSize(15);
  fill(150);
  text("点击图表观看各年级性别分布",640,550);

  
  textFont(font1);
  textSize(40);
  fill(#FFA000);
  text("46.67%",320,210);
  textFont(font2);
  textSize(20);
  fill(#FFA000);
  text("本科",320,350);
  
  textFont(font1);
  textSize(40);
  fill(#FFC107);
  text("33.33%",640,210);  
  textFont(font2);
  textSize(20);
  fill(#FFC107);
  text("硕士",640,350);
  
  textFont(font1);
  textSize(40);
  fill(#FFD54F);
  text("20%",960,210);
  textFont(font1);
  textSize(20);
  fill(#FFD54F);
  text("博士",960,350);
}

void piechart(float diameter,float angles[]){
  
  for (int i=0;i<3;i++){
    float lastangle =0;
    noStroke();

    fill(#FFF9C4);
    arc(320+i*320,200,diameter,diameter,lastangle,360-lastangle);
    fill(piecolor[i]);
    arc(320+i*320,200,diameter,diameter,lastangle,lastangle+radians(angles[i]));
    lastangle+=radians(angles[i]);
    fill(255);
    ellipse(320+i*320,200,diameter-30,diameter-30);

  }

}

void peopleChart(float manData, float womanData){

  for(int i = 0; i < 10; i++){
    if(i+1 <= round(10*manData/(manData+womanData))){
      image(img7, 440+i*40, 450);
    }
    else{
      image(img8, 440+i*40, 455);
    }
  }
  

}

void getPieChartData1(){
  for(int i = 0; i < account.length ; i ++){
  //  println(account[i]);
    String[] line = splitTokens(account[i]);
    String program = line[5];
    String Id = line[0];
   // println(line.length);
   

    for(int j = 0; j < 29658; j ++){
      if(program.equals("本科") && Id.equals(sporterID[j])){
      bachelor_1 ++;
      }
      else if(program.equals("硕士") && Id.equals(sporterID[j])){
      master_1 ++;
      }
      else if(program.equals("博士") && Id.equals(sporterID[j])){
      phd_1 ++;
      }
    }
  }
}

void getPeopleData1(){
  for(int i = 0; i < account.length ; i ++){
  //  println(account[i]);
    String[] line = splitTokens(account[i]);
    String gender = line[2];
    String program = line[5];
    String Id = line[0];
   // println(line.length);
   
    for(int j = 0; j < 29658; j ++){
      if(gender.equals("男") && Id.equals(sporterID[j])){
      sporterMale_1 ++;
      }
      else if(gender.equals("女") && Id.equals(sporterID[j])){
      sporterFemale_1 ++;

      }
      
    }
   
  }
 // println(readerMale);
}


void peopleChartMode(){
  if (mousePressed&&mouseX>=220&&mouseX<=420&&mouseY>=150&&mouseY<=350){
    c=1;
  }
  
  if(mousePressed&&mouseX>=540&&mouseX<=740&&mouseY>=150&&mouseY<=350){
    c=2;
  }
  if(mousePressed&&mouseX>=860&&mouseX<1060&&mouseY>=150&&mouseY<=350){
    c=3;
  }
  if(mousePressed&&mouseY>350){
    c=0;
  }
}

void peopleChartdraw(){
  if(c==0){
    textFont(font1);
    textSize(30);
    fill(#70b6e1);
    text("77%",400,450);
    fill(#ee807a);
    text("23%",860,450);
  }
  if (c==1){
    textFont(font1);
    textSize(30);
    fill(#70b6e1);
    text("76%",400,450);
    fill(#ee807a);
    text("24%",860,450);
  }
  if(c==2){
    textFont(font1);
    textSize(30);
    fill(#70b6e1);
    text("75%",400,450);
    fill(#ee807a);
    text("25%",860,450);
  }
  if(c==3){
    textFont(font1);
    textSize(30);
    fill(#70b6e1);
    text("80%",400,450);
    fill(#ee807a);
    text("20%",860,450);
  }
}
void judgepage1(){
  if(mousePressed&&mouseX>=440&&mouseX<=490&&mouseY>=600&&mouseY<=720){
    b=2;
  }
  if(mousePressed&&mouseX>=760&&mouseX<=810&&mouseY>=600&&mouseY<=720){
    b=3;
  }
  if(mousePressed&&mouseX>=1080&&mouseX<=1130&&mouseY>=600&&mouseY<=720){
    b=4;
  }
}