//json é um tipo de objeto
//json no dart nada mais é do que uma string

//criar uma string de multiplas linhas '''
//tudo que for colocado dentro é uma string de multiplas linhas

import 'dart:convert';

String json = ''' 
  {
    "usuario" : "Pedro Helias Carlos",
    "senha" : 1234
  }

''';
// para validar json, acessar https://jsonlint.com/

//vamos criar mais um json, um pouco mais complexo

String jsonPumpado = ''' 
  {
    "usuario" : "Pedro Helias Carlos",
    "senha" : 1234,
    "permissoes": [
      "owner", "admin"

    ]
  }



''';

//permissoes vai nos trazer um nivel mais abaixo do json, mais profundo 

Map mapa = {
  'nome' : "Pedro Helias Carlos",
  "pass": 123,
  "permissions": [
    "owner", "admin"
  ]
};
//criando mapa para transformar em json



void main(){
  print(json);
  Map resultJson = jsonDecode(json);  //transformar json em map
  print(resultJson);
  print(resultJson.runtimeType); //vai nos mostrar o tipo. apenas com .runtimeType
  //nos sera revelado que apos o jsonDecode, o tipo da variavel é map. Logo, sabemos que a estrutura basica do map leva em conta uma key e value
  //podemos então tratar como um map
  print(resultJson["usuario"]); //vai nos traz o valor do usuario. E isso pode ser feito para qualquer valor
  print(resultJson.keys.last); //isso vai funcioanr tmb
  Map jsonPump = jsonDecode(jsonPumpado);
  print(jsonPump["permissoes"]);
  //atraves dos indices, podemos acessar os objetos mais profundos
  print(jsonPump["permissoes"][0]); //vai mostrar o owner
  print(mapa);
  var result = jsonEncode(mapa); //vai transformar o map em json
  print(result); //vira json
}


