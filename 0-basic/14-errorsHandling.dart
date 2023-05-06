//tratamento de erros, falhas e exceções.

import 'dart:math';

void main(){
  //se lançarmos um erro obvio, ele nos trará o resultado no terminal
  //print((2/0).toInt()); //essa operação é matematicamente errada, e lançará uma exceção
  //como podemos fazer com que esse erro, essa exceção seja tratada? para nao matar o processo, nem que a aplicação não falhe
  //utilizando TRY CATCH
  //Estrutura:
  //

  try {
    //tentar algo
    //vamos utilizar o exemplo acima, que está comentado
    print((2/0).toInt());
  } catch(erro, stackStrace){
    //e caso falhe, quero capturar essa falha
    // o catch pode receber 2 parametros, o e(que seria o erro, que pode ser escrito de qualquer forma)
    // o segundo parametro que podemos utilizar é a stackStrace: a pilha de erro. Através da pilha de erro que vamos descobrir e analisar aonde o erro aconteceu e como conserta-lo.Pode ser descrita de qualquer forma

    print("deu erro! do tipo: $erro"); //no caso acima, foi lançado um erro
    print("$stackStrace"); //printando a stackStrace
    //nem sempre a gente vai printar os erros ou as causas
    //podemos propagar um erro, por exemplo, passar ele pra frente
    //para propagar, utilizamos:
    //rethrow; //neste caso vai ocorrer os prints anteriores do erro e quando chegar ao rethow, ele vai lançar o erro, falhando a aplicação.
    //se quiseremos devolver um exception,falando algo: 
    //throw Exception("aconteceu uma merda"); //vai lançar o erro mas vai poder mandar algo por esse erro
  
    //utilizando a classe:
    //throw loginError("Teste");
  } 

  login logue = login();
  
  //podemos envolver o login numa exceção

  try {
    logue.logar();
  } catch (e) {
    print("falhou ao loggar");
    
  }finally{ //vai ser chamado ao fim da execução dos erros.
    //vamos tentar logar 
    logue.pass = "23454677";
    logue.logar();
    // mas o finally poderia enviar logs das falhas para o banco de dados, por exemplo

  }



}


class login{
    String user = "User";
    String pass = "12344";

  void logar(){
  
   
    if(pass.length <= 6){
      
      throw passwordLengthError(); //vai acusar erro pois o tamanho da senha não passou no quesito
    }else{
      print("logou");
    }

  } //vai tentar logar
}

//podemos construir nossas proprias exceções de erro:

class passwordLengthError implements Exception{
 

  passwordLengthError();
}