const pi = 3.14159;
final dataAtual = DateTime.now();

void main() {
pi = 3.14; //não é possível reatribuir valores à uma constante após a mesma ser iniciada

dataAtual = DateTime(2026, 01, 10); //não é possível reatribuir o valor de uma variavel final


  print('Valor de pi: $pi');
  print('Data atual: $dataAtual');
}