import 'dart:async';

Map<String, String> cache = {};

Future<String?> buscarConfiguracao(String chave) async {
  return cache[chave] ?? await buscarDaAPI(chave);
}

Future<String?> buscarDaAPI(String chave) async {
  await Future.delayed(Duration(seconds: 2));

  Map<String, String> api = {
    "tema": "claro",
    "idioma": "pt-BR"
  };

  cache[chave] = api[chave]!;
  return api[chave];
}

void main() async {
  String? valor = await buscarConfiguracao("tema");
  print(valor?.toUpperCase() ?? "Configuração não encontrada");
}