import 'dart:math';

class musicBox{
    final String nomeLista;
    final String autor;
    final bool isPublic;

    Map <String, String> musicas = {};
    Map <String, String> musicasSelecionadas = {
      "Cidade Negra":"Girassol",
      "Biquini Cavadão": "Ventania",
      "Paralamas do Sucesso":"Vital e sua moto",
      "Legião Urbana":"Vento no litoral",
      "Capital Inicial":"Veraneio Vascaina",
      "Los Hermanos": "O último romantico"
    };
    List <String> autores = ["Cidade Negra", "Biquini Cavadão", "Paralamas do Sucesso", "Legião Urbana", "Capital Inicial", "Los Hermanos"];
    
    musicBox(this.nomeLista, this.autor, this.isPublic);

    void addMusica(String autor, String musica){
      musicas.putIfAbsent(autor, () => musica);
      print("Musica adicionada");
    }

    void surpriseMe(){
      int randomValue = Random().nextInt(6);
      String selectedAuthor = autores[randomValue];
      musicasSelecionadas.forEach((key, value) {
        if(key == selectedAuthor){
          musicas.putIfAbsent(key, () => value);
        }
      });

    }

    void delMusic(key){
      musicas.remove(key);
    }

    void call(){
      if(musicas.isEmpty == true){
        print("Lista vazia");
      }else{
        print("A lista possui as seguintes musicas:");
      musicas.forEach((key, value) { 
        print("$key - $value");
      });
      }
      
    }



}


void main(){
  musicBox musicBox1 = musicBox("Minha Playlist", "Pedro Helias Carlos", true);
  musicBox1();
  for(int i= 0; i <= 3; i++){
    musicBox1.surpriseMe();
  };

  musicBox1();
  


}