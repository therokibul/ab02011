import 'dart:convert';

import 'package:http/http.dart' as http ;
import 'package:ab02011/models/pokemon_model.dart';


class  PokemonController {
  Future <PokeModel> getData() async{
    var response = await http.get(Uri.parse('https://raw.githubusercontent.com/biuni/pokemongo-pokedex/master/pokedex.json'));
    var dataBindings;
    if(response.statusCode == 200){
      var responsData = jsonDecode(response.body);
      dataBindings = PokeModel.fromJson(responsData);
    }
    return dataBindings;
  }
}