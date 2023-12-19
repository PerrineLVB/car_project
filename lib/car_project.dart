class Voiture {
  String immatriculation;
  String modele;
  double prixHT;
  int nbPortes;
  Moteur moteur;

  Voiture({
    required this.immatriculation,
    required this.modele,
    required this.prixHT,
    this.nbPortes = 4,
    required this.moteur
  });
}

class Moteur {
  int cylindree;
  int puissance;
  Energie energie;

  Moteur({
    required this.cylindree,
    required this.puissance,
    this.energie = Energie.essence,
  });
}
  

enum Energie {
  diesel,
  essence,
  electrique,
}

void main() {
  List<Voiture> voitures = [
    Voiture(
      immatriculation: "AB123CD",
      modele: "Renault Twingo",
      prixHT: 10000,
      moteur: Moteur(cylindree: 2000, puissance: 150, energie: Energie.essence),
    ),
    Voiture(
      immatriculation: "EF456GH",
      modele: "Peugeot 208",
      prixHT: 25000,
      moteur: Moteur(cylindree: 1800, puissance: 120, energie: Energie.electrique),
    ),
    Voiture(
      immatriculation: "IJ789KL",
      modele: "Renault Captur",
      prixHT: 30000,
      moteur: Moteur(cylindree: 2200, puissance: 180, energie: Energie.diesel),
    ),
  ];

  // Afficher toutes les voitures
  for (var voiture in voitures) {
    print(voiture.modele);
  }

  // Calculer le prix HT total
  double prixHTTotal = 0;
  for (var voiture in voitures) {
    prixHTTotal += voiture.prixHT;
  }
  print("Prix HT total : $prixHTTotal");

  // Afficher les voitures ayant un moteur électrique
  List<Voiture> voituresElectriques = voitures.where((voiture) => voiture.moteur.energie == Energie.electrique).toList();
  for (var voiture in voituresElectriques) {
    print(voiture.modele);
  }
}
