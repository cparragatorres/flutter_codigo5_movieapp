import 'dart:convert';
import 'package:flutter_codigo5_movieapp/models/movie_model.dart';
import 'package:http/http.dart' as http;

class APIService{

  Future<List<MovieModel>> getMovies() async {
    String path =
        "https://api.themoviedb.org/3/discover/movie?api_key=077c6b8e215715b477754b84846c0f95";
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