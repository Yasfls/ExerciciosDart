import 'dart:async';

void main() async {
  StreamController<int> controller = StreamController<int>.broadcast();

  controller.stream.listen((numero) {
    print("Listener 1 (imprime): $numero");
  });

  int contador = 0;
  controller.stream.listen((numero) {
    contador++;
    print("Listener 2 (contador): recebeu $contador números");
  });

  int soma = 0;
  controller.stream.listen((numero) {
    soma += numero;
    print("Listener 3 (soma): soma atual = $soma");
    print("");
  });

  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    controller.sink.add(i);
  }

  await controller.close();
}
