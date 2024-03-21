// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie/data/remote/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'schema.schema.gql.g.dart';

abstract class GMovieInput implements Built<GMovieInput, GMovieInputBuilder> {
  GMovieInput._();

  factory GMovieInput([void Function(GMovieInputBuilder b) updates]) =
      _$GMovieInput;

  String get title;
  int get year;
  String get director;
  String get genre;
  double get rating;
  String get poster;
  String get banner;
  String get description;
  static Serializer<GMovieInput> get serializer => _$gMovieInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMovieInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMovieInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMovieInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
