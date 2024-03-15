import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie/data/model/movie.dart';
import 'package:movie/data/remote/app_dio.dart';
import 'package:retrofit/retrofit.dart';
part 'my_data_source.g.dart';

final myDataSourceProvider = Provider((ref) => MyDataSource(ref));

@RestApi()
abstract class MyDataSource {
  factory MyDataSource(Ref ref) => _MyDataSource(ref.read(dioProvider));

  @GET('/movies')
  Future<List<Movie>> getMovies();

  @GET('/movies/{id}')
  Future<Movie> getMovie({@Path('id') required String id});
}
