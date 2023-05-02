//Toda vez que trabalhamos com um objeto que não garantimos que acontecerá logo em seguida a uma requisição(geralmente serviços externos - API), devemos utilizar um objeto do tipo Future. Esse objeto fará uma requisiçaõ, e após a requisição retornar, ele vai trzer o retorno da função.

//Ex:

Future<String> retornaCEP(String nome){
  return Future.value("cep_desejado");
}

void main() async{
  //para cravar esse objeto na variavel que retornará o CEP, devemos também modificar o tipo de variavel para Future.
  Future<String> cep= retornaCEP("Taguatinga");
  late String cepCVT;
  print(cep); //repare que esse retorno nos trás "Instance of 'Future<String>'
  //para retornar o valor do future, fazemos então:
  //cep.then((result) => print(result));
  //mas queremos fazer com que a aplicação aguarde o future para ai sim chamar a operação "late". Então, colocamos o async apos o void main para tornar o void async
  //para receber o valor, colocamos await na variavel que receberáo valor

  cepCVT = await cep; //o await vai aguardar, ele não seguirá enquanto ele naõ realizar sua ação. Ele não vai printar o comando abaixo enquanto o await não resolver.

  print(cepCVT);


  
}