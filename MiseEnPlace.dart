import 'dart:io';

import 'Aventurier.dart';
import 'Enigme.dart';
import 'Gardien.dart';
import 'Lieu.dart';
import 'Piege.dart';

Future<void> main() async{
    print("Bienvenue");
    await Future.delayed(Duration(seconds: 1));
    print("Entrez votre nom");
    String? nomAventurier = stdin.readLineSync();
    Aventurier joueur = Aventurier(nomAventurier!);
    print("Vous êtes ${joueur.nomAventurier} et vous avez ${joueur.nombreDeVies} vies");
    print("Commencer à jouer ");

    List<Lieu> lieux = [
      Lieu("Temple de l'énigme chic ", [Enigme()]),
      Lieu("Les chutes du piège", [Piege()]),
      Lieu("Le gardien fou", [Gardien()])
    ];

    for(var lieu in lieux){
      await lieu.explorer(joueur);
      if(!joueur.estVivant()){
        print("Oups vous n'avez plus de vies ");
        break;
      }
      await Future.delayed(Duration(seconds: 1));
    }
    if(joueur.estVivant()){
      print("\nFélicitations $nomAventurier ! Vous avez terminé l'aventure !");
      print("Il vous reste ${joueur.nombreDeVies} vies");
    }
}