import 'package:ytsbloc/model/movies.dart';

class MovieResponce {
  List<Movies> movies;
  final String error;

  MovieResponce({this.movies, this.error});

  MovieResponce.fromJson(Map<String, dynamic> json)
      : movies = List<Movies>.from(json["movies"].map((x) => Movies.fromJson(x))),
        error = "";

  MovieResponce.withError(String errorValue)
      : movies = List(),
        error = errorValue;
}
