import 'dart:math';

class magicCollection{
  int gems;
  Map <String, int> collection = {};
  List <String> totalCollection = ["Black Lotus ", "Time Walk", "Ancestral Recall", "Undergound Sea", "Mox Jet", "Timetwister", "Mox Sapphire", "Intuition", "Mox Ruby", "Mox Pearl"];

  magicCollection(this.gems); //construtor

  void addGems(int amout){
    gems = gems + amout;
  }

  int openPacks(){
    int randonValue = Random().nextInt(10);
    return randonValue;
  }

  String selectCard(int value){
    String card = totalCollection[value];
    return card;
  }

  void verifyCollection(String card){
    collection.forEach((key, value) => {
      if(card == key && value <=4  ){
        value = value + 1
      }else if(card == key && value == 4){
        print("impossivel adicionar mais"),
        addGems(20)
      }else{
        collection.putIfAbsent(card, () => 1),
        value = value + 1
      }
    });
  }
  
  void addCollection(){
    int rng = openPacks();
    String card = selectCard(rng);
  
    
        collection.putIfAbsent(card, () => 1);

      
  
    
  }

  void showCollection(){
    collection.forEach((key, value) => print("$key : $value"));
  }

}

void main(){
  magicCollection magic = magicCollection(1000);
  for(int i=0; i<=4; i++){
    magic.addCollection();  
  }
  magic.showCollection();

}


//main() {
//  var rng = Random();
//  for (var i = 0; i < 10; i++) {
//    print(rng.nextInt(100));
//  }
//}