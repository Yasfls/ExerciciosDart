void main() {
  Map<int, String> produtos = {
    1: 'Lápis',
    2: 'Caneta',
    3: 'Borracha',
    4: 'Apontador',
    5: 'Corretivo'
  };
 
  int idBusca = 3;
  if (produtos.containsKey(idBusca)) {
    print('Produto $idBusca encontrado: ${produtos[idBusca]}');
  }
 
  produtos.remove(2);
 
  print('\nLista de Produtos Atualizada:');
  produtos.forEach((id, nome) => print('ID: $id | Nome: $nome'));
}