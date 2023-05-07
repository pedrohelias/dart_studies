//a partir da versao mais recente do dart, a necessidade do uso do Extension para representar o que estava descrito no enum passou de ser necessária

enum tipoPagamento{
  
  PIX(1,"PIX"), 
  BOLETO(2,"Boleto"), 
  CARTAO(3,"Cartao");
  //primeiramente, escrvemos as opcoes possiveis


  final String value; //delaramos uma variavel que respeite a tipagem das opcoes possivel, e sera final pois havera um construtor
  final int id; //a segunda variavel criada para demonstrar que é possivel realizar mais de uma passagem de valores pelo enum
  const tipoPagamento(this.id, this.value, ); //geradores de enum necessitam obrigatoriamente ser const. É NECESSARIO DEFINIR A ORDEM QUE QUEREMOS QUE OS DADOS SEJAM RETORNOADOS. O ID ANTES DO VALUE.

}

class maquinaBanco{ //criamos uma classe maquina de pagamento
  void pagamento(tipoPagamento tipo){ //criamos um metodo que tem o nosso enum como argumento. o tipo dele é o proprio tipoPagamento, o segundo argumento é o label que ele receberá
    print(tipo.value); //tipo é uma "criação" de instancia do enum. O .value chama a variavel "value". Ela, por sua vez, vai definir algum dos valores acima determinados. 
    print(tipo.id);
  }
}


void main(){
  maquinaBanco maquina1 = maquinaBanco();
  maquina1.pagamento(tipoPagamento.BOLETO); //ao passar o nome da variavel que definimos, ele percorrerá ate o enum e vai encontrar o valor correspondente. 

}
