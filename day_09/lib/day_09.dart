import 'dart:math';
class Sprite {
  Sprite(String name){
    this.name=name;
  }
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  bool isSnow = true;
  int size = 100;
  int direction = 90;

  void move(int x) {
    this.x = x;
  }
  String say(){
    return this.name;
  }
  void changeYby(int y){
    this.y=y;
  }
  void changeSizeBy(int size){
    this.size=size;
  }
  void sayText5Times(String text){
    for(int i=0; i<5; i++){
      print(text);
    }
  }
  void changeDirection(int direction){
    this.direction=direction;
  }
   String direction2(){
    if(this.direction>0 && this.direction<180){
      return 'North East';
    }else if(this.direction>270 && this.direction<360){
      return 'South West ';
    }else{
      return 'South East';
    }
  }
  void randomDirection(){
    final random=Random().nextInt(100);
    int randomNumber=random;
    this.direction=randomNumber;
}

}

void main() {
  print('Day-09-Tornado');
  final Button = Sprite('Button');
  final Witch = Sprite('Witch');
  final Guiter = Sprite('Guiter');
  final Ball = Sprite('Ball');

  print(Button);
  Button.move(10);
  print(Button.x);
  print(Button.say());
  Button.changeYby(10);
  print(Button.y);
  Button.move(10);
  Button.changeYby(30);
  Witch.changeYby(-40);
  Witch.move(30);
  Guiter.move(100);
  Guiter.move(-200);
  Guiter.changeYby(30);
  Guiter.changeYby(-20);
  Ball.changeYby(200);
  Ball.changeYby(-300);
  print(Button.say());
  print(Witch.say());
  print(Guiter.say());
  print(Ball.say());
  Button.changeSizeBy(100);
  print(Button.size);
  Witch.changeSizeBy(60);
  print(Witch.size);
  Guiter.changeSizeBy(40);
  print(Guiter.size);
  Ball.changeSizeBy(120);
  print(Ball.size);
  Button.sayText5Times('Hi');
  print(Button.direction2());
 Button.randomDirection();
 print(Button.direction);

}
