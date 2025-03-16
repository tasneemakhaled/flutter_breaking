import 'package:bloc/bloc.dart';
import 'package:flutter_breaking/dataLayer/models/character_model.dart';
import 'package:flutter_breaking/dataLayer/web_services/characters_service.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit() : super(CharactersInitial());
  final characters = CharactersService().getAllCharacters();
}
