import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/web.dart';
import 'package:movie/data/repository/movie_repository.dart';
import 'package:movie/data/repository/movie_repository_impl.dart';

final movieRepositoryProvider = Provider<MovieRepostiory>((ref) {
  return MovieRepostioryImpl(ref);
});

final loggerProvider = Provider((_) => Logger());
