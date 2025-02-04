//import 'dart:io';
import 'dart:math';

class Aventurier {
  late String nomAventurier;
  int nombreDeVies = 3;
  Aventurier(this.nomAventurier){
    this.nombreDeVies =3;
  }
  bool estVivant(){
    return nombreDeVies>0;
  } 
  int perdreVie(int aRetirer){
    return nombreDeVies = max(0,nombreDeVies-aRetirer);
  }

 /* Future<void>jouerMaintenant ()async{
   // bool aReussi = false;
    while(estVivant()){
     Enigme(question, reponse) 
    await Future.delayed(Duration(seconds: 1));  
    }
  }*/
  /*static Future<void>etreAventurier()async{
    print("Bienvenue");
    await Future.delayed(Duration(seconds: 1));
    print("Entrez votre nom");
    String? nomAventurier = stdin.readLineSync();
    Aventurier joueur = Aventurier(nomAventurier!);
    print("Vous êtes ${joueur.nomAventurier} et vous avez ${nombreDeVies} vies");
    print("Commencer à jouer ");
    
  }*/
}