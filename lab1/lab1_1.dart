import "dart:io";

// void main(List<String> args) {
//   print("hello");
// }

///output on console : hello

// void main(List<String> args) {
//   int i;
//   for(i = 0; i<5; i++)
//     print("hello ${i+1}");
// }

//output 
/*
hello 1
hello 2
hello 3
hello 4
hello 5
*/

void main() {
  stdout.write('without new line ');
  print('hello world');
  print(calculate());
}

int calculate() {
  return 7 * 6;
}

//output 
/*
without new line hello world
42
*/
