import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  factory Movie({
    final String? id,
    final String? title,
    final int? year,
    final String? director,
    final String? genre,
    final double? rating,
    final String? poster,
    final String? banner,
    final String? description,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
