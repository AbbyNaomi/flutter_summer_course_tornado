class Body{
  int numberOfSeats=0;

  Body({required int numberOfSeats}){
    this.numberOfSeats=numberOfSeats;

  }
}
class Wheel{
  int numberOfWheels=0;

  Wheel({required int numberOfWheels}){
    this.numberOfWheels=numberOfWheels;
  }
}
class Car{
  String name='';
  Body body=Body(numberOfSeats: 0);
  Wheel wheel=Wheel( numberOfWheels: 0);
  Car({required String name,required Body body, required Wheel wheel}){
    this.name=name;
    this.body=body;
    this.wheel=wheel;
  }
  void showMyInfo(){
    print('My Info is ${this.name}');
  }
}
void main(){
  final Body lamborghiniBody=Body(numberOfSeats:2);
  final Wheel lamborghiniWheel=Wheel(numberOfWheels: 4);
  final Car lamborghini=
      Car(name: 'Lamborghini',body: lamborghiniBody,wheel:lamborghiniWheel);
  lamborghini.showMyInfo();
  final Door numberOfDoor=Door(numberOfDoors: 2);
  final Floor numberOfFloor=Floor(numberOfFloors: 3);
  final Building ajnai101=Building(name: 'Ajnai 101',floors: numberOfFloor,doors: numberOfDoor);
  print(ajnai101.name);
}
class Door{
  int numberOfDoors=0;
  Door({required int numberOfDoors}){
    this.numberOfDoors=numberOfDoors;
  }
}
class Floor {
  int numberOfFloors=0;
  Floor({required int numberOfFloors}){
    this.numberOfFloors=numberOfFloors;
  }
}
class Building{
  String name='';
  Floor floors=Floor(numberOfFloors: 2);
  Door doors=Door(numberOfDoors: 3);
  Building({required String name, required Floor floors,required Door doors }){
    this.name=name;
    this.floors=floors;
    this.doors=doors;
  }

}