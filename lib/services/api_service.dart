import 'dart:convert';
import 'package:flutter_codigo5_movieapp/models/movie_model.dart';
import 'package:flutter_codigo5_movieapp/utils/constants.dart';
import 'package:http/http.dart' as http;

class APIService{

  Future<List<MovieModel>> getMovies() async {
    String path =
        "$pathProduction/discover/movie?api_key=$apiKey";
    Uri _uri = Uri.parse(path);
    http.Response response = await http.get(_uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = json.decode(response.body);
      List movies = myMap["results"];
      List<MovieModel> moviesList =
          movies.map<MovieModel>((e) => MovieModel.fromJson(e)).toList();
      return moviesList;
    }
    return [];
  }


}