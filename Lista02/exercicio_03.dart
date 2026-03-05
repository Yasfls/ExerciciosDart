Future<String> autenticar() async {
  await Future.delayed(Duration(seconds: 1));
  return "123456";
}

Future<Map<String, dynamic>> buscarPerfil(String token) async {
  await Future.delayed(Duration(seconds: 1));
  return {
    "id": 123,
    "nome": "Maria Silva"
  };
}

Future<List<String>> buscarPedidos(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return ["Pedido 1", "Pedido 2", "Pedido 3"];
}

Future<void> main() async {
  try {
    print("Autenticando");
    final token = await autenticar();

    print("Buscando perfil");
    final perfil = await buscarPerfil(token);

    print("Buscando pedidos");
    final pedidos = await buscarPedidos(perfil['id']);

    print("Usuário: ${perfil['nome']}");
    print("Pedidos: $pedidos");
  } catch (erro) {
    print("Erro: $erro");
  }
}