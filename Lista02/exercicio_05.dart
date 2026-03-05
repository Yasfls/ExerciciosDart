import 'dart:async';

Future<List<String>> buscarDadosLentos() async {
  await Future.delayed(Duration(seconds: 5));
  return ["Produto 1", "Produto 2", "Produto 3", "Produto 4", "Produto 5"];
}

Future<void> carregarDashboard() async {
  try {
    final resultado =
        await buscarDadosLentos().timeout(Duration(seconds: 3));
        
    print(resultado);
    
  } on TimeoutException {
    print('Operação demorou muito!');
  }
}

void main() {
  carregarDashboard();
}