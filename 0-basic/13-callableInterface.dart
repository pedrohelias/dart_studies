//callable interface - é algo que se pode utilizar para melhroar a semantica dos codigos
//Ele vai sintetizar uma funçaõ a instancia gerada automaticamente. Em outras palavras: Se eu tenho uma classe buscarAlunos e um método chamado buscar(que, de fato, busca os alunos), fica muito ruim chama-lo com buscarAlunos.buscar(). Isso fere diversas recomendações de codigos. Podemos apenas descrever como "call". Dessa forma, ao escrever-mos buscarAlunos(), o mesmo realizará a ocorrência que está descrita dentro do método call. É muito interessante utilizar isso para descritorores de classe. Por exemplo:

class serHumano{
  final String nome;
  final int idade;
  final double altura;

  serHumano(this.nome, this.idade, this.altura);

  //aqui será descrita a call que será chamada assim que construirmos a estrutura.

  void call(){
    print("Olá, eu me chamo $nome, tenho $idade anos, e $altura de altura");
  }
}


void main(){

  serHumano pessoa = serHumano("Pedro Helias Carlos", 27, 1.71);
  pessoa(); // eu chamar agora a instancia criada da classe, vamos observar que é possível executar o metodo call
}