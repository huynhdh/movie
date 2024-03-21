import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/web.dart';
import 'package:movie/data/handler/result.dart';
import 'package:movie/data/model/movie.dart';
import 'package:movie/data/model/show.dart';
import 'package:movie/data/remote/graphql/__generated__/movies.req.gql.dart';
import 'package:movie/data/remote/graphql_client.dart';
import 'package:movie/data/remote/my_data_source.dart';
import 'package:movie/data/remote/tvmaze_data_source.dart';
import 'package:movie/data/repository/movie_repository.dart';
import 'package:movie/provider/data_provider.dart';
import 'package:movie/provider/error_provider.dart';

class MovieRepostioryImpl extends MovieRepostiory {
  MovieRepostioryImpl(this._ref);
  final Ref _ref;

  late final MyDataSource _dataSource = _ref.read(myDataSourceProvider);

  late final TvmazeDataSource _showDataSource =
      _ref.read(tvmazeDataSourceProvider);

  late final graphqlClient = _ref.read(graphqlClientProvider);

  late final _errorNotifier = _ref.read(errorProvider);

  late final Logger _logger = _ref.read(loggerProvider);

  @override
  Future<Result<List<Movie>>> getMovies() {
    // try to retrive data using graphsql
    final moviesReq = GMoviesReq((b) => {});
    graphqlClient.request(moviesReq).listen((res) {
      if (res.data != null) {
        var movies = res.data!.movies;
        for (var movie in movies) {
          _logger.d('Movie: ${movie.title} - ${movie.director}\n');
        }
      }
    });
    return Result.guardFuture(() async {
      final movies = await _dataSource.getMovies();
      return movies;
    }, _errorNotifier);
  }

  @override
  Future<Result<Movie>> getMovie(String id) {
    return Result.guardFuture(() async {
      final movie = await _dataSource.getMovie(id: id);
      return movie;
    }, _errorNotifier);
  }

  @override
  Future<Result<Show>> getShow(int id) {
    return Result.guardFuture(() async {
      return await _showDataSource.getShow(id: id);
    }, _errorNotifier);
  }
}
