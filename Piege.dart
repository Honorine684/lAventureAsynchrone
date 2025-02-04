import 'dart:math';

import 'Aventurier.dart';
import 'Obstacle.dart';

class Piege extends Obstacle {
    Random aleatoire = Random();

    Future<void>affronter(Aventurier joueur)async{
        await Future.delayed(Duration(seconds: 1));
        if(aleatoire.nextBool() == false ){
            print("Vous avez réussi à sauter le piège");
        }else{
            joueur.perdreVie(1);
            print("Vous êtes tombé dans le piège");
            print("Il vous reste ${joueur.nombreDeVies} vies");
        }
    }
}