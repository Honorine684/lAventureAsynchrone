import 'dart:io';
import 'dart:math';

import 'Aventurier.dart';
import 'Obstacle.dart';

class Enigme extends Obstacle{
  String question = "";
  String reponse = "";

  // generer aleatoirement les questions
  final Random random = Random();
  static const List<Map<String,String>> enigmes = [
    {"Question":"Qui est la plus belle?" , "Reponse":"Honorine"},
    {"question": "Quelle est la capitale de la France?", "reponse": "Paris"},
    {"question": "Quel est le plus grand océan du monde?", "reponse": "Pacifique"},
    {"question": "Combien y a-t-il de continents?", "reponse": "7"},
    {"question": "De quelle couleur est le ciel?", "reponse": "Bleu"}
  ];
  Enigme(){
    if(enigmes.isNotEmpty){
     int indexAleatoire = random.nextInt(enigmes.length);// generer aleatoirement l'index de question
     Map<String,String> enigmeAleatoire = enigmes[indexAleatoire] ; // choisit la question pour lequel l'indice atete genere si par exemple c'est l'index 1 la question capitale france sera choisi
     question = enigmeAleatoire["Question"] ?? "Question par défaut";
     reponse = enigmeAleatoire["Reponse"] ?? "Reponse par défaut";
    }else{
      question = "Question par défaut";
      reponse = "Reponse par défaut";
    }
    /*int indexAleatoire = random.nextInt(enigmes.length);
    question = enigmes[indexAleatoire]["Question"];
    reponse = enigmes[indexAleatoire]["Reponse"];*/
  }
  Future<void>affronter(Aventurier joueur)async{
  print("Enigme : $question");
  await Future.delayed(Duration(seconds: 1));
  print("Entrez votre reponse");
  String? reponseUser = stdin.readLineSync();
  if(reponseUser!.trim().toLowerCase() == reponse!.toLowerCase()){
    print("Enigme résolue avec succès");
  }else{
    joueur.perdreVie(1);
    print("Mauvaise réponse.La réponse attendue était $reponse");
    print("Il vous reste ${joueur.nombreDeVies} vies");
  }
   await Future.delayed(Duration(seconds: 1));
  }
  // generer statiquement la question
  /*Enigme(this.question,this.reponse); 
  String? recupererReponse(){
    String? reponse = stdin.readLineSync();
    return reponse;
  }
  Future<void>affronter(Aventurier joueur)async{
    print("Enigme : $question");
    await Future.delayed(Duration(seconds: 1));
    print("Entrez votre reponse");
    String? reponseUser = await recupererReponse();
    if(reponseUser!.trim().toLowerCase() == reponse.trim().toLowerCase()){
      print("Enigme résolue avec succès");
    }else{
      joueur.perdreVie(1);
      print("Mauvaise réponse");
      print("Il vous reste ${joueur.nombreDeVies} vies");
    }
  }*/

}