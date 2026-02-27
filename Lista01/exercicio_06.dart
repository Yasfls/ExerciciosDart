
double executarOperacao(double a, double b, Function operacao){
  return operacao(a, b);
}
void main(){
double soma = executarOperacao(2, 3, (a, b) => a + b);
print('O resultado da soma é: $soma');

double subtracao = executarOperacao(2, 3, (a, b) => a - b);
print('O resultado da subtração é: $subtracao');

double multiplicacao = executarOperacao(2, 3, (a, b) => a * b);
print('O resultado da multiplicação é: $multiplicacao');

double divisao = executarOperacao(2, 3, (a, b) => a / b);
print('O resultado da divisão é: $divisao');
}