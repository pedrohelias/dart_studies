//para criar classes com atributos encapsulados, temos o underscoew
//ex:
//class Carro {
//  final String modelo;
//  String _segredo = "Muito dinheiro";
//
//  Carro(this.modelo);
//}

//Todas classes privadas (com undescore) são ocultas a outros arquivos .dart - E isso demonstra o encapsulamento

//para disponiblizar o valor secreto, mas deixar apenas leitura, deve-se realizar um get para a variavel

//ex

class Carro{
  final String modelo;
  String _segredo = "muito dinheiro";
  int _valor = 1000;

  Carro(this.modelo);

  int get ValordoCarro => _valor; //esse getter vai mostrar a informação do valosegredor do carro, mas nao vai permitir edição
  //getter tem que utilizar arrow function

  //para criar variaveis que permitam alteração de valores internos das classes, escrevemos:
  //set

  void set(String segredo) => _segredo = segredo; //vai permitir que a variavel fechada _segredo seja alterada


}

// O DART NAÔ TEM INTERFACE. ELE POSSUI ABSTRACT CLASS

abstract class Pessoa { //algo abstrato
  String comunicar();
}

//criando uma classse para herdar a classe de pessoa

class ET implements Pessoa{
  //sempre que implementar, deve-se retornar o que foi escrito na abstrata
  String comunicar(){
    return "sou um ET";
  }
}


class Reptilianos implements Pessoa{
  String comunicar(){
    return "sou um reptiliano";
  }
}

//então, dessa forma há uma herança acontecendo


class Linguagem {
  String falar(){
    return "gíria";
  }
}


class Filho extends Linguagem{
  //se estanciarmos essa classe, vamos ter a possibilidade de chamar Filho.falar(), e receber "giria" como resultado
}

void main(){
  Carro carro1 = Carro("Mercedes");
  print(carro1._segredo);
  //carro1.ValordoCarro = 10; -> essa linha de codigo quebra o codigo pois tenta alterar o valor da variavel.
  carro1.set("Welcome to the mato");
  print(carro1._segredo);
}