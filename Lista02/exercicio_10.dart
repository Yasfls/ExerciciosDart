import 'dart:async';
import 'dart:math';

void main() {
  Stream<String> eventos = gerarEventosUsuario();

  Timer? debounceTimer;
  String? ultimoEvento;

  eventos.listen((evento) {
    print("Evento recebido: $evento");

    ultimoEvento = evento;

    debounceTimer?.cancel();

    debounceTimer = Timer(Duration(seconds: 1), () {
      print("Evento processado após debounce: $ultimoEvento\n");
    });
  });
}

Stream<String> gerarEventosUsuario() {
  List<String> tipos = ["click", "scroll", "input"];
  Random random = Random();

  return Stream.periodic(Duration(milliseconds: 500), (count) {
    return tipos[random.nextInt(tipos.length)];
  }).take(20);
}