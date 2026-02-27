void main() {

List<String> frutas = ['bergamota', 'laranja', 'banana', 'kiwi' , 'morango', 'uva'];

var comM = frutas.where((f) => f.startsWith('m')).toList();
print('Frutas que começam com "m": $comM');

var maiusculo = frutas.map((f) => f.toUpperCase()).toList();
print('Frutas em maiúsculo: $maiusculo');
}