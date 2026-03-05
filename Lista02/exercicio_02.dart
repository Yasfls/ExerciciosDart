Future<String> buscarUsuario() async {
  await Future.delayed(Duration(seconds: 2));
  return "Maria Silva";
}

void carregarDados() async {
  try {
    print('Buscando usuário');

    String nome = await buscarUsuario();

    print('Usuário: $nome');
  } catch (erro) {
    print('Erro: $erro');
  }
}

void main() {
  carregarDados();
}