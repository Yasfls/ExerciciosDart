import 'dart:async';

Future<String?> autenticarUsuario(String usuario, String senha) async {
  await Future.delayed(Duration(seconds: 2));

  if (usuario == "admin" && senha == "123") {
    return "token_abc123";
  } else {
    throw Exception("Falha na autenticação");
  }
}

Future<String?> buscarPerfil(String token) async {
  await Future.delayed(Duration(seconds: 1));
  return "Perfil do usuário";
}

Future<String?> buscarConfiguracoes(String token) async {
  await Future.delayed(Duration(seconds: 2));
  return "Configurações do sistema";
}

Future<String?> buscarNotificacoes(String token) async {
  await Future.delayed(Duration(seconds: 1));
  return null;
}

Stream<String> escutarAtualizacoes() async* {
  List<String> eventos = [
    "Nova mensagem recebida",
    "Perfil atualizado",
    "Nova notificação"
  ];

  for (var evento in eventos) {
    await Future.delayed(Duration(seconds: 1));
    yield evento;
  }
}
Future<void> main() async {
  try {
    print("Autenticando usuário...");

    String? token = await autenticarUsuario("admin", "123");

    print("Token recebido: ${token!}");

    print("\nBuscando dados em paralelo...");

    List<String?> resultados = await Future.wait([
      buscarPerfil(token),
      buscarConfiguracoes(token),
      buscarNotificacoes(token)
    ]);

    String perfil = resultados[0] ?? "Perfil não disponível";
    String configuracoes = resultados[1] ?? "Configurações padrão";
    String notificacoes = resultados[2] ?? "Sem notificações";

    print("Perfil: $perfil");
    print("Configurações: $configuracoes");
    print("Notificações: $notificacoes");

    print("\nEscutando atualizações em tempo real:");

    escutarAtualizacoes().listen(
      (evento) {
        print("Evento: $evento");
      },
      onError: (erro) {
        print("Erro no stream: $erro");
      },
      onDone: () {
        print("Stream encerrado");
      },
    );

  } catch (erro) {
    print("Erro no sistema: $erro");
  }
}