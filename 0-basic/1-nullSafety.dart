//nullsafety -> Traz uma inteligencia para que as variaveis não aceitem valores nulos

void main(){

  //se eu escrevo uma variavel String assim: String nome; o interpretador acusa erro, dizendo que uma variavel nao pode assumir valor nulo. O jeito certo é inicializar com valor. Por exemplo: String variavel = "Nome";

  //Para variáveis que inicialmente começam com valores nulos e futuramente serão preenchidas, tem-se alterantivas: String? nome;
  //Dessa forma dizemos que a variavel nome pode receber valores nulos:

  String? nome; 
  print(nome);

  //como desenvolvedor, muitas vezes é necessário garantir que a variavel não é nula. A forma correta de fazer isso é adicionando um ! ao fim da variavel. Por exemplo: print(nome!);

  //String? nome2;
  //print(nome!);

  //No exemplo acima será lançada uma excessão pois a variavel que foi permitido que fosse nula foi relacionada como nunca sendo nula. 

  String nome1 = "Pedro";
  print(nome1!); //isso até é possível mas irá gerar warning para sinalizar que não terá efeito, pois a variavel possui um valor, não sendo naturalmente nula.

  String? nome4;
  nome4 = "Carlos";
  print(nome4);

  //no exemplo acima, inicializamos como nulo, e dps atribuimos um valor a ela. Por fim, printamos

  //Late -> Depois da primeira vez que a variavel receber um valor, tardio, ela não poderá mais tornar a ter um valor nulo, receber Null.

  //Escrever o codigo abaixo é totalmente possivel:
    //String? Nome
    //nome = "ABC";
    //nome = null;

  // Já com o Late, isso não é mais possível

  late String sobrenome;
  sobrenome = "sobrenomeCarlos";
  print(sobrenome);
  //sobrenome = null; //Esse trecho de código vai quebrar o sistema e dará erro. 

}