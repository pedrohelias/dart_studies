//a estrutura para criar uma classe segue a diretiva class <nome da classe> {}

class Celular{
  //primeiramente se add os atributos
  final String cor;
  final int qtdPros;
  final double tamanho;
  final double peso;
  // o final citado acima sinaliza que a responsabilidade de preenchimento dos atributos da nossa classe é do construturo.

  //abaixo vamos escrever o construtor, ele vai saber criar instâncias das classes 

  Celular(this.cor, this.qtdPros, this.tamanho, this.peso);

  //abaixo criamos os metodos. Os metodos precisam de tipo, e vão retornar algo(ou não). Caso não retorne, será do tipo void. 

  String presentation(){ //é uma função que vai apresentar
    return "cor do celular: $cor, processamento: $qtdPros, tamanho: $tamanho, peso: $peso";
  }

  double valorTamPes(double custo){
    double calculo = (tamanho * peso)/custo;
    return calculo;
  }

}

void main(){
  //o tipo da classe que criamos é de um tipo especificado pela propria classe 
  Celular celular1 = Celular("azul", 10, 12.5 , 89.5 );
  //da forma acima estamos criando uma instancia. Abaixo, podemos chamar uma dos atributos dessa classe e printar

  print(celular1.cor);
  print(celular1.presentation());
  print(celular1.valorTamPes(10.0));
}