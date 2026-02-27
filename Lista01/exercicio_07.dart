void main() {

List<int> numeros = [1,2,3,4,5,6,7,8,9,10];

numeros.add(11);
numeros.remove(5);
print('Tamanho: ${numeros.length}');
print('');
print('Primeiro: ${numeros.first}');
print('');
print('Ultimo: ${numeros.last}');     

print('');
print('Lista:');
numeros.forEach((f) => print(f));

}

