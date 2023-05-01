void main(){
  //o for em dart é similar ao for em .c

  List<String> nomes = ["Pedro", "Helias", "Carlos"];
  int tabuada = 2;

  for(int i = 0; i <= 10; i++){
    print(tabuada * i); //printar a tabuada do 2
  }

  //o while também é similar
  int contador = 10;
  
  print("Contagem regressiva...");
  
  while(contador > 0){
    print(contador);
    contador--;
    if(contador == 0){
      print("Lançamento!");
    }
  }


}