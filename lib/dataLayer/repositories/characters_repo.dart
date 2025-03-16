import 'package:flutter_breaking/dataLayer/web_services/characters_service.dart';

class CharactersRepo {
  final CharactersService charactersService;

  CharactersRepo({required this.charactersService});

  Future<List<dynamic>> getAllCharacters() async {
    final characters = charactersService.getAllCharacters();
    return characters;
  }
}
