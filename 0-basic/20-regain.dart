import 'dart:io';

class RPG{
  final String name;
  int? forca, destreza, constituicao, inteligencia, sabedoria, carisma;
  int somaValores = 0;
  String? racaChar, classeChar, clotesUP, clotesDown, weaponChar;
  List <String> raca = ["Humano", "Anao", "Elfo"];
  List <String> classe = ["Paladino", "Barbaro", "Ladrao"];

  Map <String, int> clotes_upper = {
    "Tshirt blue": 10,
    "Tshirt red": 7,
    "Thisrt yellow": 9
  };

  Map <String, int> clotes_down = {
    "pants blue": 5,
    "pants red": 6,
    "pants yellow": 10
  };

  Map <String, int> weapon = {
    "sword": 10, 
    "axe": 8,
    "spear": 7
  };

  Map <String, int> atributos = {};


  RPG(this.name);
  
  void call(){
    print(''' 
    ___________________________________   
   | Personagem: $name                 
   | Raca: $racaChar                   
   | Classe: $classeChar               
   | Utilizando $clotesUP e $clotesDown
   | porta um(a) $weaponChar           
   |___________________________________
   |      
   | Atributos:
   | forca: $forca
   | destreza: $destreza
   | constituicao: $constituicao
   | inteligencia: $inteligencia
   | sabedoria: $sabedoria
   | carisma $carisma
   |____________________________________   
   |
   | Soma de valores: $somaValores
   |____________________________________

    ''');  
  }


  void weaponSelection(){
    print("Selecione o seu armamento(digite o nome):");
    int i = 1;
    weapon.forEach((key, value) {
      print("$i- Armamento: $key - Valor Associado: $value");
      i++;
    });
    print("Selecao:");
    
    weaponChar = stdin.readLineSync();
    
    weapon.forEach((key, value) {
      if(weaponChar == key){
        somaValores = value + somaValores;
      }
    });


  }

  void clotesSelection(){
    print("Selecione suas vestimentas de cima(digite o nome):");
    int j = 1;
    int k = 1;
    clotes_upper.forEach((key, value) {
      print("$j- Roupa de Cima: $key - Valor Associado: $value");
      j++;
    });
    clotesUP = stdin.readLineSync();

    print("Selecione suas vestimentas de baixo(digite o nome):");


    clotes_down.forEach((key, value) {
      print("$k- Roupa de Baixo: $key - Valor Associado: $value");
      k++;
    });
    clotesDown = stdin.readLineSync();
    
    clotes_upper.forEach((key, value) {
      if(clotesUP == key){
        somaValores = value + somaValores;
      }
    });

    clotes_down.forEach((key, value) {
      if(clotesDown == key){
        somaValores = value + somaValores;
      }
    });
  }

  //funcoes atributo

  void addAtributo(String atr, int valor){
    atributos.putIfAbsent(atr, () => valor);
  }

  void alteraAtributo(String atr, int valor){

    atributos.update(atr, (value) => valor);
      
  }

  void mostraAtributos(){
    atributos.forEach((key, value) {
      print("$key: $value");      
    });
  }

}



void main(){
  RPG rpg1 = RPG("Pedro Helias Carlos");
  //rpg1();
  //rpg1.weaponSelection();
  //rpg1.clotesSelection();
  rpg1.addAtributo("forca", 10);
  rpg1.addAtributo("destreza", 10);
  rpg1.mostraAtributos();
  rpg1.alteraAtributo("destreza", 8);
  rpg1.mostraAtributos();
  rpg1();
 
}