class Pirate{
  String name='';
  int age=0;
  String ability='';
  int numberOfGold=0;
  Pirate({required String name, required int age,required String ability, required int numberOfGold}){
    this.name=name;
    this.age=age;
    this.ability=ability;
    this.numberOfGold=numberOfGold;
  }
  void haiHoi(){
    print ("My name is ${this.name}.i'm ${this.age} years old."
    "I have an ability of ${this.ability}."
    "I have ${this.numberOfGold}Gold."
    "I'm a Pirate and i'm a member of StrawHat Pirates");
  }




}
class DLuffy extends Pirate{
  DLuffy({required super.name, required super.age, required super.ability, required super.numberOfGold});

  @override
  void haiHoi(){
    print("I'm the greatest Pirate of all the time."
        "I want to be the king of Pirate. I'm poor. I eat so much. I've an ability to Strech my Body");
  }

}
void main (){
  final Pirate smallPirate=
      Pirate(name: "Yesui", age: 10, ability: 'none', numberOfGold: 0);
      smallPirate.haiHoi();
   final DLuffy monkeyDLuffy=DLuffy(name: "Monkey D.Luffy", age: 23, ability: "Strech", numberOfGold: 10000000);
   monkeyDLuffy.haiHoi();
   final Zoro swordsmenZoro=Zoro(name: "Roronoa Zoro" , ability: "fight three swords", numberOfGold: 10000, age: 21);
   swordsmenZoro.haiHoi();
   final Sanji slendermenSanji=Sanji(name: "Sanji", age: 21, ability:"strech,speed" , numberOfGold: 100000);
   slendermenSanji.haiHoi();
   final Nami youngNami=Nami(name: 'Nami', age: 20, ability: 'Cat Burglar', numberOfGold:1000000);
   youngNami.haiHoi();
}
class Zoro extends Pirate{
  Zoro({required super.name, required super.age, required super.ability, required super.numberOfGold});
  @override
  void haiHoi(){
    print("I'm Roronoa Zoro"
        "I'm the Pirate Hunter."
        " I'm swordsmen."  "I've an ability to fight three swords.");
  }

}
class Sanji extends Pirate{
  Sanji({required super.name, required super.age, required super.ability, required super.numberOfGold});
  @override
  void haiHoi(){
    print("I'm Sanji ."
        "i'm slender man ");
  }
}
class Nami extends Pirate{
  Nami({required super.name, required super.age, required super.ability, required super.numberOfGold});
  @override
  void haiHoi(){
    print("i'm Nami."
        "i'm 20 years old.");

  }

}

