import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie/data/model/show.dart';
import 'package:movie/data/remote/app_dio.dart';
import 'package:retrofit/retrofit.dart';
part 'tvmaze_data_source.g.dart';

final tvmazeDataSourceProvider = Provider((ref) => TvmazeDataSource(ref));

@RestApi(baseUrl: "https://api.tvmaze.com")
abstract class TvmazeDataSource {
  factory TvmazeDataSource(Ref ref) => _TvmazeDataSource(ref.read(dioProvider));

  @GET('/shows/{id}')
  Future<Show> getShow({@Path('id') required int id});
}
