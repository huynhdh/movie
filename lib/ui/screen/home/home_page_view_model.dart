import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie/data/model/movie.dart';
import 'package:movie/data/repository/movie_repository.dart';
import 'package:movie/provider/data_provider.dart';

final homeViewModelProvider =
    ChangeNotifierProvider((ref) => HomeViewModel(ref));

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._ref);
  final Ref _ref;

  late final MovieRepostiory _movieRepostiory =
      _ref.read(movieRepositoryProvider);

  List<Movie>? _movies;
  List<Movie>? get movies => _movies;

  Future<List<Movie>> fetchMovies() {
    _movieRepostiory.getShow(2);
    return _movieRepostiory
        .getMovies()
        .then((value) => _movies = value)
        .whenComplete(notifyListeners);
  }
}
