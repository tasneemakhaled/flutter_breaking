part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

final class CharactersLoaded extends CharactersState {
  final CharacterModel characterModel;

  CharactersLoaded({required this.characterModel});
}

final class CharactersLoading extends CharactersState {}

final class CharactersFailure extends CharactersState {}
