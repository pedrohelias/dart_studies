
void main() {

    //declaração tipo String
    String variavelNome = "Pedro";

    //declaração tipo Inteiro
    int valorInteiro = 10;

    //declaraçao tipo Boleano
    bool isTrue = true;

    //declaração lista com strings: List<String> nomeLista = ["valor1", "valor2"];
    List<String> meuNome = ["Pedro", "Helias", "Carlos"];

    //execucao do print: print(algo);
    print(variavelNome);
    print(valorInteiro);
    print(isTrue);
    print(meuNome);

    //concatenação para printar dois valores. Utilização do $ para referenciar que estamos tratando um valor dentro de uma variavel
    var concatenate = '${meuNome[0]} ${meuNome[1]}';
    print(concatenate);

    //ou

    var concatenate2 = meuNome[0] + ' ' + meuNome[1];
    print(concatenate2); //neste caso iria sem espaço se não fosse a pequena "gambiarra" feita no inicio


   //existem outras formas 
}

