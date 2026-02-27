void main(){
  String nome;
  String titulo = 'Sr.';
  bool mostrarHora = false;

  void saudar({required String nome, String titulo = 'Sr.', bool mostrarHora = false}) {
    String hora = '';
    if (mostrarHora) {
      final now = DateTime.now();
      hora = ' - ${now.hour}:${now.minute.toString().padLeft(2, '0')}';
    }
    print('Olá, $titulo $nome$hora!');
  }
  saudar(nome: 'Yasmin', titulo: 'Sra.', mostrarHora: true);
}