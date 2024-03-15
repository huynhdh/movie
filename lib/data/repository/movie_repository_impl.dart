import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/web.dart';
import 'package:movie/data/model/movie.dart';
import 'package:movie/data/model/show.dart';
import 'package:movie/data/remote/my_data_source.dart';
import 'package:movie/data/remote/tvmaze_data_source.dart';
import 'package:movie/data/repository/movie_repository.dart';
import 'package:movie/provider/data_provider.dart';

class MovieRepostioryImpl extends MovieRepostiory {
  MovieRepostioryImpl(this._ref);
  final Ref _ref;

  late final MyDataSource _dataSource = _ref.read(myDataSourceProvider);
  late final TvmazeDataSource _showDataSource =
      _ref.read(tvmazeDataSourceProvider);
  late final Logger _logger = _ref.read(loggerProvider);

  @override
  Future<List<Movie>> getMovies() async {
    final movies = await _dataSource.getMovies();
    _logger.i('Movies: $movies');
    return movies;
  }

  @override
  Future<Movie> getMovie(String id) async {
    final movie = await _dataSource.getMovie(id: id);
    return movie;
  }

  @override
  Future<Show> getShow(int id) async {
    final show = await _showDataSource.getShow(id: id);
    _logger.i('Show: $show');
    return show;
  }
}
