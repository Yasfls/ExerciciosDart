import 'dart:async';

void main() async {
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (mensagem) {
      print("Nova mensagem: $mensagem");
    },
    onDone: () {
      print("Chat encerrado.");
    },
  );

  List<String> mensagens = [
    "Olá",
    "Bem vindo",
    "Ao código em Dart",
    "Eba!",
    ":D"
  ];

  for (var msg in mensagens) {
    await Future.delayed(Duration(seconds: 1));
    controller.sink.add(msg);
  }

  await controller.close();
}