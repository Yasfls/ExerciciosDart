void main(){

double calcularArea(double largura, double altura) {  
   return largura * altura;
}

double calcularAreaArrow(double l, double h) => l * h;

print(calcularArea(5, 10));
print(calcularAreaArrow(5, 10));
}