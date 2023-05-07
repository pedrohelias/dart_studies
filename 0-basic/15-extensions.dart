//com o extensions poderemos criar "minimetodos" para descrever nossas variaveis, classes, enums alguma acao que elas podem realizar...
// é praticamente possivel criar extensoes para quase todos os objetos do dart

//problema: Determinar que a primeira letra do nome é maiuscula

extension stringExtensions on String { //vamos criar um "minimetodo" acessivel a todas as strings
  String firstUpper(){ //vai tornar a primeira letra do nome maiuscula
    return this[0].toUpperCase() + this.substring(1); //substring vai escrever o restante da string que passarmos
    //o this será utilizado pois o extension representa um tipo de ação que naõ necessita de argumento. o proprio this vai dizer que ao inves do argumento, utilize a propria variavel que chamou.
  }


}


void main(){
  String nome = "pedro";
  print(nome.firstUpper()); //note que nome é uma String, logo ele vai encontrar a operacao que será possível realizar para todos os Strings.
  //podemos escrever diretamente numa string tmb
  print("teste".firstUpper());

}