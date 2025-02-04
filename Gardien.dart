import 'dart:io';

import 'Aventurier.dart';
import 'Obstacle.dart';

class Gardien extends Obstacle{
Future<void>affronter(Aventurier joueur)async{
    int choix;
    do {
      print("Tapez 1 pour combattre le gardien et 2 pour négocier");
      choix = int.parse(stdin.readLineSync()!);
    } while (choix >2 || choix<=0);
   
   if(choix == 1){
    joueur.perdreVie(1);
    await Future.delayed(Duration(seconds: 1));
    print("Vous avez perdu le combat");
    print("Il vous reste ${joueur.nombreDeVies} vies");
   }else if(choix == 2){
    await Future.delayed(Duration(seconds: 1));
    print("La négociation a réussi avec succès");
   }

    
}  
}