import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: homeScreen(nome: "Pedro Helias Carlos", idade: 27),
    );  }
  

}

class homeScreen extends StatelessWidget{
  final String nome;
  final int idade;

  const homeScreen({super.key, required this.nome, required this.idade});

  
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(child: Center(child: Text("Eu sou o $nome e tenho $idade anos")));
  }

}