import 'dart:math';



class arenaSystem{
  List <String> cards = ["Black Lotus ", "Time Walk", "Ancestral Recall", "Undergound Sea", "Mox Jet", "Timetwister", "Mox Sapphire", "Intuition", "Mox Ruby", "Mox Pearl"];

  void addCards(collection){
    String card = selectCard();
   
    // if (collection.isEmpty){
    //   print("ta vazio");
    //   collection.putIfAbsent(card, () => 1);
    //   print("$card adicionado");   
    // }else{
    //   collection.forEach((key,value) {
    //     if(card == key){
    //       value = value + 1;
    //     }else{
    //       collection[card] = value;
    //     }
    //   });
    // }
    collection.putIfAbsent(card, () => 1);

  }

  String selectCard(){
    String card = cards[Random().nextInt(10)];
    return card;
  }

  int addGems(gems, int amout){
    gems = amout + gems;
    print(gems);
    print("gems add");
    return gems;
  }

  int addGold(gold, int amout){
    gold = amout + gold;
    print("gold add");
    return gold;
  }





}

class playerDescribe{
  int? id;
  final String name;
  final int age;
  final String email;
  final int password;
  Map <String, int> collection = {};
  List <String> cardsAux = [];
  int gems = 0;
  int gold = 0;


  
  playerDescribe(this.name, this.age, this.email, this.password);

  void call(){
    if(id == null){
      idGenerate();
    }
    print("Jogador: $name\nEmail: $email\nid: $id\ngems: $gems\ngold: $gold");
  }

  void idGenerate(){
    int randomValue = Random().nextInt(999999);
    id = randomValue;

  }

  void showCollection(){
    collection.forEach((key, value) { print("$key, x$value");});
  }

  

}

void main(){
  playerDescribe player1 = playerDescribe("Pedro Helias Carlos", 27, "pedrohelias95@hotmail.com", 170995);
  player1();
  
  arenaSystem arena = arenaSystem();
  
  arena.addCards(player1.collection);
  arena.addCards(player1.collection);
  
  player1.gems = arena.addGems(player1.gems, 10);
  

  
  player1.showCollection();
}

