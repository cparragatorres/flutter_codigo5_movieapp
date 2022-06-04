import 'dart:convert';
import 'package:flutter_codigo5_movieapp/models/cast_model.dart';
import 'package:flutter_codigo5_movieapp/models/movie_detail_model.dart';
import 'package:flutter_codigo5_movieapp/models/movie_model.dart';
import 'package:flutter_codigo5_movieapp/pages/movie_detail_page.dart';
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


  Future<MovieDetailModel?> getMovie(int movieId) async{
    String path = "$pathProduction/movie/$movieId?api_key=$apiKey";
    Uri _uri = Uri.parse(path);
    http.Response response = await http.get(_uri);
    if(response.statusCode == 200){
      Map<String, dynamic> myMap = json.decode(response.body);
      MovieDetailModel movie = MovieDetailModel.fromJson(myMap);
      return movie;
    }
    return null;
  }

  Future<List<CastModel>> getCast(int movieId) async{
    String path = "$pathProduction/movie/$movieId/credits?api_key=$apiKey&language=en-US";
    Uri _uri = Uri.parse(path);
    http.Response response = await http.get(_uri);
    if(response.statusCode == 200){
      Map<String, dynamic> myMap =  json.decode(response.body);
      List cast = myMap["cast"];
      List<CastModel> castModelList = cast.map((e) => CastModel.fromJson(e)).toList();
      return castModelList;
    }
    return [];
  }

  getReviews(int movieId) async{
    String path = "$pathProduction/movie/$movieId/reviews?api_key=$apiKey&language=en-US&page=1";
    Uri _uri = Uri.parse(path);
    http.Response response = await http.get(_uri);
    print(response.statusCode);
  }


}