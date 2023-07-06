void main() {
  print('Day-08');
  print(add(3, 4));
  print(average(4, 6));
  print(urjver(1,2,3));
  printStrings('Hello','World');
}

int add(int a, int b) {
  return a + b;
}

// exercise 01
double average(int a, int b) {
  return (a + b) / 2;
}
// exercise 02
int urjver(int a, int b, int c){
  return a*b*c;
}
// exercise 03
void  printStrings(String a, String b){
  print('$a $b');
}



