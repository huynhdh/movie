import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie/data/handler/result.dart';
import 'package:movie/data/model/movie.dart';
import 'package:movie/data/repository/movie_repository.dart';
import 'package:movie/provider/data_provider.dart';

final newMovieViewModelProvider =
    ChangeNotifierProvider((ref) => NewMovieViewModel(ref));

class NewMovieViewModel extends ChangeNotifier {
  NewMovieViewModel(this._ref);
  final Ref _ref;

  late final MovieRepostiory _movieRepostiory =
      _ref.read(movieRepositoryProvider);

  Future<Result<int>> addMovie(
    String poster,
    String banner,
    String description, {
    required String title,
    required int year,
    required String director,
    required String genre,
    required double rating,
  }) {
    var movie = Movie(
        title: title,
        year: year,
        director: director,
        genre: genre,
        rating: rating,
        poster: poster,
        banner: banner,
        description: description);
    return _movieRepostiory.addMovie(movie).whenComplete(notifyListeners);
  }
}
