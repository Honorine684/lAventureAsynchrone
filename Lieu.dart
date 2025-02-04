import 'Aventurier.dart';
import 'Obstacle.dart';

class Lieu {
  String? nomLieu;
  List<Obstacle> obstacles = [];

  Lieu(this.nomLieu,this.obstacles);
  Future<void>explorer(Aventurier joueur)async{
    print("\nVous êtes entrain d'explorer $nomLieu\n");
    for(Obstacle obstacle in obstacles){
      await obstacle.affronter(joueur);
       if(!joueur.estVivant()){
        print("Game over,Vous n'avez plus de vies");
        break;
      }
    }
   
  }

}