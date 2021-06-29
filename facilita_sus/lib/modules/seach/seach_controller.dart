import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:facilita_sus/models/ubs_model.dart';

class SeachController {
  Stream<QuerySnapshot> ubsStreams =
      FirebaseFirestore.instance.collection('ubs').snapshots();
  List<UbsModel> ubs = [
    UbsModel(
      nome: 'nome',
      endereco: 'endereco',
      image: 'image',
      especialidades: ['almondega', 'fkkf dasdf', 'dentista', 'conopedista'],
    ),
    UbsModel(
      nome: 'nome',
      endereco: 'endereco',
      image: 'image',
      especialidades: ['Castanha', 'mapa', 'dentista', 'ortopedista'],
    ),
    UbsModel(
      nome: 'nome',
      endereco: 'endereco',
      image: 'image',
      especialidades: ['castanha', 'fígado', 'dentista', 'pedista'],
    ),
    UbsModel(
      nome: 'nome',
      endereco: 'endereco',
      image: 'image',
      especialidades: ['alho', 'dasdf', 'dentista', 'petista'],
    ),
  ];
  List<String> especialidades = [];

  final String pesquisa;
  SeachController({
    required this.pesquisa,
  });

  void map() {
    FirebaseFirestore.instance.collection('ubs').get().then(
      (QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach(
          (doc) {
            print(doc['nome']);
            for (var item in doc['especialidades']) {
              if (item.contains(pesquisa)) {
                converter(doc['especialidades']);

                ubs.add(
                  UbsModel(
                    nome: doc['nome'],
                    endereco: doc['endereco'],
                    image: doc['image'],
                    especialidades: especialidades,
                  ),
                );
              }
            }
          },
        );
      },
    );
  }

  void converter(List<dynamic> list) {
    especialidades = [];
    for (var item in list) {
      especialidades.add(item.toString());
    }
  }
}
