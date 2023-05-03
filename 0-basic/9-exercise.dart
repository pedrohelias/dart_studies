import "dart:io";
import 'dart:math';

class Compras{
  final String nomeLista;
  final String autor;
  Map<String, int> produtos = {"Amaciante":2, "Mamão":3};

  Compras(this.nomeLista, this.autor);

  void adicionarProduto(String produto, int quantidade ){
    produtos.keys.forEach((element) => {
      if (element == produto){
        print("Produto já existente, digite novamente")}
    });
    produtos.putIfAbsent(produto, () => quantidade);

  }

  bool validaItem(String produto){ //vai validar se o item digitando ja existe na lista.
    bool valida = false;
    produtos.keys.forEach((element) => {
      if (element == produto){
        valida = true}
    });

    return valida;

  }

  void retirarProduto(String key){
    produtos.remove(key);

  }

  void atualizarQuantidade(String key, int valor){
    produtos.update(key, (value) => valor);
  }

  void mostrarLista(){
    produtos.forEach((key, value) => print("$key: $value unidade(s)"));
    print("\n");
  }

  void dadosLista(){
    print("Esta lista se chama $nomeLista, criada por $autor");
  }  

}

void main(){
  print("Digite o nome da lista");
  String? nomeLista = stdin.readLineSync()!;
  print("Digite o autor da lista");
  String? nomeAutor = stdin.readLineSync()!;

  Compras compras1 = Compras(nomeLista, nomeAutor);
  String list = compras1.nomeLista;

  //compras1.adicionarProduto("Amaciante", 2);
  //compras1.adicionarProduto("Beterraba", 3);
  compras1.mostrarLista();

  
  //int? selecao = int.parse(stdin.readLineSync()!);
  int? selecao;

  print("$list!\nEscolha a operação\n1 - Adcionar produtos a lista\n2- Retirar produto da lista\n3 - Atualizar quantidade de produtos\n4 - Mostrar a lista\n5 - Sair!\n");

  selecao = int.parse(stdin.readLineSync()!);


  while(selecao != 5){

    switch (selecao){
      case 1:
        print("Digite o produto a ser adicionado\n");
        String? produto = stdin.readLineSync()!;
        bool validacao = compras1.validaItem(produto);
        if(validacao == true){
          print("Produto já existente, digite novamente");
        }else{
        print("Digite a quantidade\n");
        int? quantidade = int.parse(stdin.readLineSync()!);
        compras1.adicionarProduto(produto, quantidade);
        print("Produto Adicionado\n");
        }
        break;
      case 2:
        print("Digite o produto a ser retirado");
        String? produto = stdin.readLineSync()!;
        compras1.retirarProduto(produto);
        break;

      case 3:
        print("Digite o produto que queira atualizar a quantidade");
        String? produto = stdin.readLineSync()!;
        print("Digite a nova quantidade");
        int? quantidade = int.parse(stdin.readLineSync()!);
        compras1.atualizarQuantidade(produto, quantidade);
        break;

      case 4:
        print("A lista dos produtos segue abaixo:");
        compras1.mostrarLista();
        break;
      
      default:
        print("Digite uma opção válida");

        break;
    }

    print("Lista de Compras!\nEscolha a operação\n1 - Adcionar produtos a lista\n2- Retirar produto da lista\n3 - Atualizar quantidade de produtos\n4 - Mostrar a lista\n5 - Sair!");
   
    selecao = int.parse(stdin.readLineSync()!);


  }

 // compras1.produtos.forEach((key, value) => print("$key: $value unidade(s)")); //mostrar os produtos
}