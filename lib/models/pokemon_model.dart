import 'dart:convert';

PokeModel welcomeFromJson(String str) => PokeModel.fromJson(json.decode(str));

String welcomeToJson(PokeModel data) => json.encode(data.toJson());

class PokeModel {
  PokeModel({
    required this.pokemon,
  });

  List<Pokemon> pokemon;

  factory PokeModel.fromJson(Map<String, dynamic> json) => PokeModel(
        pokemon:
            List<Pokemon>.from(json["pokemon"].map((x) => Pokemon.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pokemon": List<dynamic>.from(pokemon.map((x) => x.toJson())),
      };
}

class Pokemon {
  Pokemon({
    required this.id,
    required this.name,
    required this.img,
    required this.height,
    required this.weight,
  });

  int id;

  String name;
  String img;

  String height;
  String weight;

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        height: json["height"],
        weight: json["weight"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "height": height,
        "weight": weight,
      };
}

enum Egg { THE_2_KM, NOT_IN_EGGS, THE_5_KM, THE_10_KM, OMANYTE_CANDY }

class Evolution {
  Evolution({
    required this.num,
    required this.name,
  });

  String num;
  String name;

  factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        num: json["num"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "num": num,
        "name": name,
      };
}

enum Type {
  FIRE,
  ICE,
  FLYING,
  PSYCHIC,
  WATER,
  GROUND,
  ROCK,
  ELECTRIC,
  GRASS,
  FIGHTING,
  POISON,
  BUG,
  FAIRY,
  GHOST,
  DARK,
  STEEL,
  DRAGON,
  NORMAL
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map, this.reverseMap);

  Map<T, String> get reverse {
    // ignore: unnecessary_null_comparison
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
