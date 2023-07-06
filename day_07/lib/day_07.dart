void main() {
  print('hello dart!');

  print(4 + 5);
  print(12 + 5);
  print(13 + 5);
  print(14 + 5);
  print(45 + 5);

  add();

  f(2, 3);
  int result = f1(1, 2);
  print(result);
  add1(9,3);

  add2(1,4,5);
  add2(4,5,6);
  add2(7,8,6);

  findMinimum(3,5);

  print('test');
  print('df');
}

int f1(int x, int y) {
  return x * x + y * y;
}

void f(int x, int y) {
  print(x * x + y * y);
}

void add() {
  print(4 + 5);
}

// exercise 01

void add1(int x, int y) {
  print(x + y);
}

// exercise 02

void add2(int x, int y, int a){
  print((x+y+a)/3);
}

// exercise 03

void findMinimum(int x, int y){
  if(x<y){
    print(y);
  }else if(x==y){
    print('x==y');
  } else{
    print(x);
  }
}

// exercise 04

String helloPersonAndPet(int person, int pet) {
  return 'Hello $person and your furry friend $pet!';
}

