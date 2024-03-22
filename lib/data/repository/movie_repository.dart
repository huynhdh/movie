import 'dart:ffi';

import 'package:movie/data/handler/result.dart';
import 'package:movie/data/model/movie.dart';
import 'package:movie/data/model/show.dart';

abstract class MovieRepostiory {
  Future<Result<List<Movie>>> getMovies();

  Future<Result<Movie>> getMovie(String id);

  Future<Result<Show>> getShow(int id);

  Future<Result<int>> addMovie(Movie movie);
}
