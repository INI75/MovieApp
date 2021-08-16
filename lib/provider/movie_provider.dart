import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:moviez/model/movie.dart';

BaseOptions options = new BaseOptions(
  baseUrl: 'https://api.themoviedb.org/3',
  connectTimeout: 5000,
  receiveTimeout: 3000,
  headers: {
    'Content-Type': 'application/json',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwNGRjMTJiZWJmZDhlMTUwOTUyOTU4Y2E2YzBmOGY2MSIsInN1YiI6IjYxMWEzNDhhNGEwYjE5MDA1YzE4ZDU1YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Gh1lBUb1Mjp7yD5yIDLky-nW7wqoQuxybkJc_AjFDU0'
  },
);

Dio dio = new Dio(options);

class MovieProvider with ChangeNotifier {
  List<MovieModel> movies = [];

  Future getMovies() async {
    try {
      var response = await dio.get('/list/1');
      var data = response.data as Map<String, dynamic>;
      var items = data['items'] as List<dynamic>;

      items.forEach((element) {
        movies.add(MovieModel.fromJson(element));
      });

      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}
