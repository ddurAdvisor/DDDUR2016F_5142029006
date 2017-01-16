HScrollbar hs1;
Table sporter;

PFont font1,font2;
PImage img1,img2,img3,img4,img5,img6,img7,img8,img9,img10,img11,img12,img13,img14,img15,img16,img17;
int a=0; // control whether we should go to the welocome page
int b = 1;    //control the switch between pages
int c = 0;   //control the swtich in pieChart in page1

int sporterMale = 0;
int sporterFemale = 0;
int sporterMale_ = 0;
int sporterFemale_ = 0;
int sporterMale_0=0;
int sporterFemale_0=0;
int sporterMale_1 = 0;
int sporterFemale_1 = 0;
int bachelor = 0;
int master = 0;
int phd = 0;
int bachelor_ = 0;
int master_ = 0;
int phd_ = 0;
int bachelor_1 = 0;
int master_1 = 0;
int phd_1 = 0;
int month;
float time = 0.9;
float timeB = 0.1;
float intervalA = 11;
float intervalB = 11;

float[] angles={0,0,0};
color[] piecolor = {#FFA000,#FFC107,#FFD54F};
color[] barColor = {#FFA000,#FFC107,#FFD54F};
String[] barText = {"新体","南体","网球场","致远1楼","致远2楼"};
String[] account;
String[] sporterID=new String[29658];

float[] p1 = new float[5] ;
float[] p2 = new float[5];
float[] p3 = new float[5];
float[] p4 = new float[5];
float[] p5 = new float[5];

void setup(){
  size(1280,720);
  
  font1=createFont("方正小标宋_GBK",20);
  font2 = createFont("微软雅黑",20);
  
  img1=loadImage("homepage.jpg");
  img2=loadImage("base.jpg");
  img3=loadImage("confuse.jpg");
  img4=loadImage("rank.jpg");
  img5=loadImage("efficiency.jpg");
  img6=loadImage("base1.jpg");
  img7=loadImage("manBlue.png");
  img8=loadImage("womanPink.png");
  img9=loadImage("confuse1.jpg");
  img10=loadImage("rank1.jpg");
  img11=loadImage("efficiency1.jpg");
  img12=loadImage("swim.jpg");
  img13=loadImage("gym.jpg");
  img14=loadImage("bad.png");
  img15=loadImage("table.png");
  img16=loadImage("tennis.jpg");
  img17=loadImage("sport.jpg");
  
   account = loadStrings("account.txt");
   sporter=loadTable("zhiyuan2.csv","header");
   
   hs1 = new HScrollbar(340,550,600,16,1);
   
   for (int i=0;i<5;i++){
     p1[i]=random(47000,49000);
     p2[i]=random(21000,23000);
     p3[i]=random(7900,8900);
     p4[i]=random(3300,4300);
     p5[i]=random(320,520);
     
   }
   for (int i=0;i<29658;i++){
     TableRow a=sporter.getRow(i);
     sporterID[i]=a.getString(0);
   }
}
void draw(){
  if (a == 0 ){
    welcome();  //welcome page
  }
  else {
    initialize();  //draw the basic structure
    judge();
  }
  if(time > 0){
    time = time - 1/frameRate;
  }
  if(intervalA > 0){
    intervalA = intervalA - 1/frameRate;
  }
  else{
    intervalA = 11;
  }
  if(intervalB > 0){
    intervalB = intervalB - 1/frameRate;
  }
  else{
    intervalB = 11;
  }
  if(timeB > 0){
    timeB = timeB - 1/frameRate;
  }

}
void welcome(){
  background(img1);
  noFill();
  stroke(#ffffff);
  rect(200,415,200,50,5);
  
  textFont(font1);
  textSize(24);
  textAlign(CENTER);
  fill(#ffffff);
  text("点 击 进 入",300,450);
  
  textFont(font2);
  textSize(30);
  textAlign(CENTER);
  fill(#ffffff);
  text("2014-2015秋季学期",300,300);
  text("上海交大学生运动消费报告",300,350);
  
  textFont(font1);
  textSize(20);
  textAlign(CENTER);
  fill(#ffffff);
  text("数据来源：交大校园一卡通消费记录",300,400);
  if(mouseX >= 200 && mouseX <= 400 && mouseY >= 415 && mouseY <= 465){
    fill(#ffffff);
    stroke(#ffffff);
    rect(200,415,200,50,5);
  
    textFont(font1);
    textSize(24);
    textAlign(CENTER);
    fill(0,0,0);
    text("点 击 进 入",300,450);
    
    if (mousePressed){
      a = 1;
    }
  }
}
void initialize(){
  background(#ffffff);
  image(img2,135,630);
  image(img3,455,630);
  image(img4,775,630);
  image(img5,1095,630);
  
  textFont(font1);
  textSize(14);
  fill(150);
  text("基础信息",160,700);
  
  textFont(font1);
  textSize(14);
  fill(150);
  text("消费情况",480,700);
  
  textFont(font1);
  textSize(14);
  fill(150);
  text("人数排行",800,700);
  
  textFont(font1);
  textSize(14);
  fill(150);
  text("来访效率",1120,700);
  
  stroke(200);
// line(0,605,1280,605);
// line(320,605,320,720);
// line(640,605,640,720);
// line(960,605,960,720);
}

void judge(){
  
  if(b == 1){
      page1();
  }
  if(b==2){
    page2();
  }
  if(b==3){
    page3();
  }
  if(b==4){
    page4();
  }
}
void page1(){
  drawpage1();
  judgepage1();
}
void page2(){
  drawpage2();
  judgepage2();
}
void page3(){
  drawpage3();
  judgepage3();
}
void page4(){
  drawpage4();
  judgepage4();
}