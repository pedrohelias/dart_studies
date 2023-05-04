
class creditCard{
  final String titular;
  double? limite;
  Map <String, double> gastos = {};

  creditCard(this.titular);

  void defineLimit(double value){
    limite = value;
  }

  void addGasto(String key, double valor){
    gastos.putIfAbsent(key, () => valor);
    String last = gastos.keys.last;
    print("A compra $last foi adicionada");

  }

  void mostrarGastos(){

    gastos.forEach((key, value) => (print("$key | R\$$value")));
  }

  double somaGastos(){
    double soma = 0;
    gastos.values.forEach((element) => (soma = element + soma));
    return soma;
  }

  void validaGasto(){
    double soma = somaGastos();
    double operacao = limite! - soma;
    if(operacao < 0){
      print("limite estourado");
    }else{
      print("Ainda há $operacao de limite no cartao");
    }
   
  }




}





void main(){

  creditCard card = creditCard("Pedro Helias Carlos");
  card.addGasto("Cinema", 40);
  card.addGasto("Lanche", 10);
  card.mostrarGastos();
  card.somaGastos();
  card.defineLimit(1000);
  card.validaGasto();













































































  
  



}




















// void main(){
//   String? fiz;
//   for(int i = 1; i<=100;i++){
//     if((i%3) == 0 && (i%5) != 0){
//       print("Fizz");
//     }else if((i%3) != 0 && (i%5) == 0){
//       print("Buzz");
//     }else if((i%3) == 0 && (i%5) == 0){
//       print("Fizz-Buzz");
//     }else{
//       print(i);
//     }
//   }
// }

//multiplo de 3 = fizz
//multiplo de 5 = buzz
//multiplo de 3 e 5 = fizbuzz