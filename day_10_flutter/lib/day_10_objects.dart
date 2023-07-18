class Sprite {
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }

  int x = 0;
  int y = 0;

  void sayMyLocation() {
    print('My Locationis$x and$y');
  }
}

class NamedSprite {
  NamedSprite({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
  void sayMyLocation() {
    print('MyLocation is $x and $y');
  }
}

void main() {
  final Sprite catSprite = Sprite(10, 40);
  print(catSprite);
  catSprite.sayMyLocation();
  final NamedSprite namedCatSprite = NamedSprite(x: 40, y: 50);
  namedCatSprite.sayMyLocation();
  final Animal cat=Animal(name: 'Muujgai', type: 'cat');
  cat.makeNoise();
}

class Animal {
  String name = '';
  String type = '';
  void makeNoise() {
    print('Animal Roaring');
  }

  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
}
class Hero {
  int level=0;
  String type='';
  void doFight(){
    print('im Fighting ');
  }
  void showLevel(){
    print('im at level 10');
  }

}
