void main(){
  String converter = '42';
  int convertido1 = int.parse(converter);
  double convertido2 = double.parse(converter);
  int numero = 100;
  String convertido3 = numero.toString();
  print('Valor convertido para inteiro: $convertido1');
  print('Valor convertido para double: $convertido2');
  print('Valor convertido para string: $convertido3');
}