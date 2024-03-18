import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie/data/handler/result.dart';
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

  bool isLoading = false;

  Future<Result<List<Movie>>> fetchMovies() {
    _movieRepostiory.getShow(2);
    return _movieRepostiory.getMovies().whenComplete(notifyListeners);
  }

  Future<void> refresh() async {
    isLoading = true;
    final moviesResult = await fetchMovies();
    moviesResult.when(success: (data) {
      isLoading = false;
      _movies = data;
    }, failure: (e) {
      isLoading = true;
    });
    notifyListeners();
  }
}
