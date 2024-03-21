// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie/data/remote/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'new_movie.data.gql.g.dart';

abstract class GCreateMovieData
    implements Built<GCreateMovieData, GCreateMovieDataBuilder> {
  GCreateMovieData._();

  factory GCreateMovieData([void Function(GCreateMovieDataBuilder b) updates]) =
      _$GCreateMovieData;

  static void _initializeBuilder(GCreateMovieDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateMovieData_createMovie get createMovie;
  static Serializer<GCreateMovieData> get serializer =>
      _$gCreateMovieDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateMovieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMovieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateMovieData.serializer,
        json,
      );
}

abstract class GCreateMovieData_createMovie
    implements
        Built<GCreateMovieData_createMovie,
            GCreateMovieData_createMovieBuilder> {
  GCreateMovieData_createMovie._();

  factory GCreateMovieData_createMovie(
          [void Function(GCreateMovieData_createMovieBuilder b) updates]) =
      _$GCreateMovieData_createMovie;

  static void _initializeBuilder(GCreateMovieData_createMovieBuilder b) =>
      b..G__typename = 'CreateMovieResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get code;
  String get message;
  bool get success;
  GCreateMovieData_createMovie_movie? get movie;
  static Serializer<GCreateMovieData_createMovie> get serializer =>
      _$gCreateMovieDataCreateMovieSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateMovieData_createMovie.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMovieData_createMovie? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateMovieData_createMovie.serializer,
        json,
      );
}

abstract class GCreateMovieData_createMovie_movie
    implements
        Built<GCreateMovieData_createMovie_movie,
            GCreateMovieData_createMovie_movieBuilder> {
  GCreateMovieData_createMovie_movie._();

  factory GCreateMovieData_createMovie_movie(
      [void Function(GCreateMovieData_createMovie_movieBuilder b)
          updates]) = _$GCreateMovieData_createMovie_movie;

  static void _initializeBuilder(GCreateMovieData_createMovie_movieBuilder b) =>
      b..G__typename = 'Movie';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get title;
  static Serializer<GCreateMovieData_createMovie_movie> get serializer =>
      _$gCreateMovieDataCreateMovieMovieSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateMovieData_createMovie_movie.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMovieData_createMovie_movie? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateMovieData_createMovie_movie.serializer,
        json,
      );
}
