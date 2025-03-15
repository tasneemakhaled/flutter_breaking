import 'package:dio/dio.dart';
import 'package:flutter_breaking/constants.dart';
import 'package:flutter_breaking/dataLayer/models/character_model.dart';

class CharactersService {
  late Dio dio;
  CharactersService() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: Duration(seconds: 60),
      receiveTimeout: Duration(seconds: 60),
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }
  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      print(response.data.toString());
      return response.data;
    } on Exception catch (e) {
      print(e.toString());
      return [];
    }
  }
}
