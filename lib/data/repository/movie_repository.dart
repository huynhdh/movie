import 'package:movie/data/model/movie.dart';
import 'package:movie/data/model/show.dart';

abstract class MovieRepostiory {
  Future<List<Movie>> getMovies();

  Future<Movie> getMovie(String id);

  Future<Show> getShow(int id);
}
