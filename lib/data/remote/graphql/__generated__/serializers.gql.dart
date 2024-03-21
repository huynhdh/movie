// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:movie/data/remote/graphql/__generated__/movies.data.gql.dart'
    show GMoviesData, GMoviesData_movies;
import 'package:movie/data/remote/graphql/__generated__/movies.req.gql.dart'
    show GMoviesReq;
import 'package:movie/data/remote/graphql/__generated__/movies.var.gql.dart'
    show GMoviesVars;
import 'package:movie/data/remote/graphql/__generated__/new_movie.data.gql.dart'
    show
        GCreateMovieData,
        GCreateMovieData_createMovie,
        GCreateMovieData_createMovie_movie;
import 'package:movie/data/remote/graphql/__generated__/new_movie.req.gql.dart'
    show GCreateMovieReq;
import 'package:movie/data/remote/graphql/__generated__/new_movie.var.gql.dart'
    show GCreateMovieVars;
import 'package:movie/data/remote/graphql/__generated__/schema.schema.gql.dart'
    show GMovieInput;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateMovieData,
  GCreateMovieData_createMovie,
  GCreateMovieData_createMovie_movie,
  GCreateMovieReq,
  GCreateMovieVars,
  GMovieInput,
  GMoviesData,
  GMoviesData_movies,
  GMoviesReq,
  GMoviesVars,
])
final Serializers serializers = _serializersBuilder.build();
