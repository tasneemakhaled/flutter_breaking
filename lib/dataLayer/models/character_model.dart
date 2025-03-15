class CharacterModel {
  final int id;
  final String name;
  final String status;
  final String species;
  final String gender;
  final String image;
  CharacterModel({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.image,
  });
  factory CharacterModel.fromJson(json) {
    return CharacterModel(
      id: json['results'][0]['id'],
      name: json['results'][0]['name'],
      status: json['results'][0]['status'],
      species: json['results'][0]['species'],
      gender: json['results'][0]['gender'],
      image: json['results'][0]['image'],
    );
  }
}
