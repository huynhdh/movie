// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie/data/remote/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'movies.data.gql.g.dart';

abstract class GMoviesData implements Built<GMoviesData, GMoviesDataBuilder> {
  GMoviesData._();

  factory GMoviesData([void Function(GMoviesDataBuilder b) updates]) =
      _$GMoviesData;

  static void _initializeBuilder(GMoviesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMoviesData_movies> get movies;
  static Serializer<GMoviesData> get serializer => _$gMoviesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMoviesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMoviesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMoviesData.serializer,
        json,
      );
}

abstract class GMoviesData_movies
    implements Built<GMoviesData_movies, GMoviesData_moviesBuilder> {
  GMoviesData_movies._();

  factory GMoviesData_movies(
          [void Function(GMoviesData_moviesBuilder b) updates]) =
      _$GMoviesData_movies;

  static void _initializeBuilder(GMoviesData_moviesBuilder b) =>
      b..G__typename = 'Movie';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get title;
  int get year;
  String get director;
  String get genre;
  double get rating;
  String get banner;
  String get poster;
  String get description;
  static Serializer<GMoviesData_movies> get serializer =>
      _$gMoviesDataMoviesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMoviesData_movies.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMoviesData_movies? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMoviesData_movies.serializer,
        json,
      );
}
