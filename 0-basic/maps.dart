//mapa é uma sequencia de objetos, mas diferentemente das listas, não possui index para determianr a posição de seus fatores. É utilizada, então, uma chava, associada a cada objeto

void main(){
  
  List<String> listaExemplo = ["itemA", "itemB", "itemC"];
  //o indice de itemA é 0, itemB é 1, e itemC é 2

  for(int i = 0; i <= listaExemplo.length - 1; i++){ //-1 pois o lenght da lista é 3
    String listaAtual = listaExemplo[i];
    print("O objeto de indice $i tem valor igual a: $listaAtual ");
  }

  print(mapa);
  //é possível printar também uma chave especifica

  print(mapa["chave2"]);

  //para adicionar parametros em um mapa, podemos fazer de duas formas
  //1ª forma = utilizar o metodo putIfAbsent. Para isso, temos dois metodos no argumento: (o nome da chave, uma função)
  mapa.putIfAbsent("chave3", () => "valor3");
  print(mapa);

  //segunda forma: adiocionar mais diretamente
  mapa["chave4"] = "valor4";
  print(mapa);

  //para remover valores, podemos utilizar o metodo "remove". Ele espera uma chave. Sendo assim, passamos uma chave. 
  mapa.remove("chave4");
  print(mapa);

  //para atualizar o valor de uma chave, devemos usar uma chave ja existente
  mapa["chave1"] = "chave1Atualizada";
  print(mapa);

  //outra forma de atualizar o valor de uma chave é:
  mapa.update("chave1", (value) => "atualizada1");
  print(mapa);


  //Para iterar no mapa, precisamos de um forEach
  //um exemplO:

  mapa.forEach((key, value) => print("a chave é: $key e o valor é: $value"));

  //também é possível iterar em cima das chaves:

  mapa.keys.forEach((element) => print("elemento: $element"));
  //ou de forma mais limpa
  mapa.keys.forEach(print);

  //é possível fazer o mesmo para os values

  mapa.values.forEach(print);
}

//já o mapa é diferente. o map se inicia assim: Map<>. Agora para ele se passa 2 tipos: o tipo da chave, e o tipo do valor. POdemos fazer Map<Sring,String>. Nôa necessariamente precisam ser do mesmo tipo. 
//Para se inicializar um mapa, abre-se e fecha-se chaves.
//para se adicionar ovalor, fazemos chave:valor
Map<String, String> mapa = {
  "chave1":"valor1",
  "chave2":"valor2"

};

