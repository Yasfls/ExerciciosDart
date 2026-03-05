Future<List<String>> buscarProdutos() async {
  await Future.delayed(Duration(seconds: 1));
  return ["Produto 1", "Produto 2"];
}

Future<List<String>> buscarCategorias() async {
  await Future.delayed(Duration(seconds: 1));
  return ["Categoria A", "Categoria B"];
}

Future<List<String>> buscarPromocoes() async {
  await Future.delayed(Duration(seconds: 1));
  return ["Promo 1"];
}

Future<List<String>> buscarDestaques() async {
  await Future.delayed(Duration(seconds: 1));
  return ["Destaque 1"];
}

Future<void> carregarDashboard() async {
  final inicio = DateTime.now();
  try {
    var resultados = await Future.wait([
    buscarProdutos(),
    buscarCategorias(),
    buscarPromocoes(),
    buscarDestaques(),
    ]);
    var produtos = resultados[0];
    var categorias = resultados[1];
    var promocoes = resultados[2];
    var destaques = resultados[3];
    print('Tudo carregado!');
} catch (erro) {
  print('Erro: $erro');
}
  final fim = DateTime.now();
  final duracao = fim.difference(inicio);

  print('Tempo de execução: ${duracao.inMilliseconds} ms');
}

void main() {
  carregarDashboard();
}
