// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie/data/remote/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:movie/data/remote/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'new_movie.var.gql.g.dart';

abstract class GCreateMovieVars
    implements Built<GCreateMovieVars, GCreateMovieVarsBuilder> {
  GCreateMovieVars._();

  factory GCreateMovieVars([void Function(GCreateMovieVarsBuilder b) updates]) =
      _$GCreateMovieVars;

  _i1.GMovieInput get movie;
  static Serializer<GCreateMovieVars> get serializer =>
      _$gCreateMovieVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateMovieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMovieVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateMovieVars.serializer,
        json,
      );
}
