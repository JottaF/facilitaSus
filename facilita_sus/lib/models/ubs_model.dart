import 'dart:convert';

import 'package:flutter/foundation.dart';

class UbsModel {
  final String nome;
  final String endereco;
  final String image;
  final List<String> especialidades;

  UbsModel({
    required this.nome,
    required this.endereco,
    required this.image,
    required this.especialidades,
  });

  UbsModel copyWith({
    String? nome,
    String? endereco,
    String? image,
    List<String>? especialidades,
  }) {
    return UbsModel(
      nome: nome ?? this.nome,
      endereco: endereco ?? this.endereco,
      image: image ?? this.image,
      especialidades: especialidades ?? this.especialidades,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'endereco': endereco,
      'image': image,
      'especialidades': especialidades,
    };
  }

  factory UbsModel.fromMap(Map<String, dynamic> map) {
    return UbsModel(
      nome: map['nome'],
      endereco: map['endereco'],
      image: map['image'],
      especialidades: List<String>.from(map['especialidades']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UbsModel.fromJson(String source) =>
      UbsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UbsModel(nome: $nome, endereco: $endereco, image: $image, especialidades: $especialidades)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UbsModel &&
        other.nome == nome &&
        other.endereco == endereco &&
        other.image == image &&
        listEquals(other.especialidades, especialidades);
  }

  @override
  int get hashCode {
    return nome.hashCode ^
        endereco.hashCode ^
        image.hashCode ^
        especialidades.hashCode;
  }
}
