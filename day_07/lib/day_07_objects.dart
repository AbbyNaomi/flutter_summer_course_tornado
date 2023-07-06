class Animal{
  int legs=4;
  int eyes=2;
  int tale=1;
  int body=1;
  String species='animal';
  int age=0;

}

void main(){
  final horse=Animal();
  print(horse);
print(horse.legs);
print(horse.species);
horse.species='horse';
print(horse.species);
horse.age=15;
print(horse.age);
print(horse.legs);
print(horse.eyes);
print(horse.tale);
print(horse.body);
print(horse.species);


}