void main(){
  String converter = '42';
  int convertido1 = int.parse(converter);
  double convertido2 = double.parse(converter);
  int numero = 100;
  String convertido3 = numero.toString();
  print('Valor String Original: $converter Tipo: ${converter.runtimeType}');
  print('Valor Int Original: $numero Tipo: ${numero.runtimeType}');
  print('Valor String convertido para int: $convertido1 Tipo: ${convertido1.runtimeType}');
  print('Valor String convertido para double: $convertido2 Tipo: ${convertido2.runtimeType}');
  print('Valor Int convertido para string: $convertido3 Tipo: ${convertido3.runtimeType}');
}