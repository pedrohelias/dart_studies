//entrada de dados: necessário utilizar dart:io

import "dart:io";
import "dart:math";
/*

void main(){
print("digite a sua idade");
//é necessário utilizar o stdin.readLineSync para ler entradas. Mas sempre será retornado um valor do tipo String. Neste caso, deveremos converter para inteiro.
//o interrogação vai garantir que podem ser futuramente preenchidas, mas começa nula. Já o exclamação sinaliza que ela não será nula. 
int? idade = int.parse(stdin.readLineSync()!); 
print(idade);

//ou podemos fazer assim:

print("digite um numero");
String? numero = stdin.readLineSync(); 
int numeroCVT = int.parse(numero!);
print(numeroCVT);

}

 */
// Utilizando classes

class Matematica{
  final double a;
  final double b;
  final double c;

  Matematica(this.a, this.b, this.c);

  List raizes(){
    double delta = b*b - 4*a*c;
    double raiz1 = (-b + sqrt(delta))/(2*a);
    double raiz2 = (-b - sqrt(delta))/(2*a);
 

    List <double> listaRaiz = [raiz1, raiz2]; //vai entregar o valor esperado na lista, com 2 posições. 
    return listaRaiz;
  }

}

//Utilizando Métodos

List raizes(double a, double b, double c){
  double delta = b*b - 4*a*c;
  double raiz1 = (-b + sqrt(delta))/(2*a);
  double raiz2 = (-b - sqrt(delta))/(2*a);


  List <double> listaRaiz = [raiz1, raiz2]; //vai entregar o valor esperado na lista, com 2 posições. 
  return listaRaiz;
}

void main(){

  print("Seleciona o valor de a:");
  double? a = double.parse(stdin.readLineSync()!);
  print("Seleciona o valor de b:");
  double? b = double.parse(stdin.readLineSync()!);
  print("Seleciona o valor de c:");
  double? c = double.parse(stdin.readLineSync()!);

  //utilizando classes
  Matematica math = Matematica(a, b, c);
  List resultado = math.raizes();
  print(resultado);

  //utilizando metodos
  List resultado2 = raizes(a, b, c);
  print(resultado2);
}