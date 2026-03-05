import 'dart:async';

Stream<int> contadorStream() async* {
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() {
  contadorStream().listen(
    (numero) {
      print('Número recebido: $numero');
    },
  );
}