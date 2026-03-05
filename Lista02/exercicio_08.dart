import 'dart:async';

Stream<int> contadorStream() async* {
  for (int i = 1; i <= 20; i++) {
    yield i;
  }
}

void main() {
  contadorStream()
    .where((i) => i % 2 == 0)    
    .map((i) => i * 2) 
    .take(5) 
    .listen((i) => print(i)); 
}

