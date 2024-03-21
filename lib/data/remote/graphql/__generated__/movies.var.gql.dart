// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie/data/remote/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'movies.var.gql.g.dart';

abstract class GMoviesVars implements Built<GMoviesVars, GMoviesVarsBuilder> {
  GMoviesVars._();

  factory GMoviesVars([void Function(GMoviesVarsBuilder b) updates]) =
      _$GMoviesVars;

  static Serializer<GMoviesVars> get serializer => _$gMoviesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMoviesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMoviesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMoviesVars.serializer,
        json,
      );
}
