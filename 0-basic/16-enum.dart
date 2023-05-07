//enum: trabalhar com valores que são mutaveis

// class lutador{
//   final String nome;
//   final int ataque;
//   final int defesa;

//   lutador(this.nome, this.ataque, this.defesa);

// }

// class luta{
//   final String evento;
//   luta(this.evento);

//   void batalha(instClass1, instClass2){
//     print(instClass1.nome);
//     print(instClass2.ataque);
//   }
// }


// void main(){
//   lutador lutador1 = lutador("Juvencio", 10, 20);
//   lutador lutador2 = lutador("Armidio", 20, 10);
//   luta fight = luta("UFC");

//   fight.batalha(lutador1, lutador2);
// }

//Com o enum poderemos disponbilizar um numero limitado de opçõe que um usuario pode selecionar e a partir delas realizar as ações.


enum tipoPagamento{
  PIX, Boleto, Cartao;
} //só o enum não consegue ser reproduzido numa outra instancia. Ele da as opções mas naõ consegue. Precisamos realizar um extension

extension extensionTipoPagamento on tipoPagamento{ //realizando o extension


  String toValue(){ //essa funcao vai ser responsavel por avaliar a forma de pagamento selecionada no proprio argumento. POr exemplo: "tipoPagamento.pix"
    Map map = {
    tipoPagamento.PIX:"PIX",
    tipoPagamento.Boleto:"Boleto",
    tipoPagamento.Cartao:"Cartao"
    };
    
    return map[this]; //o this fará menção a chave escolhida.
  }
}

class formaPagamento{
  void receber(tipoPagamento tipoPagamento){
    print(tipoPagamento.toValue());
  }
}



void main(){
  formaPagamento pagar = formaPagamento();
  void pagamento = pagar.receber(tipoPagamento.PIX); //quando escrevo esse argumento, eu quero descrever que vou receber o que está escrito no valor da chave do mapa. sempre funciona porque só tenho essas opções no enum  
}
