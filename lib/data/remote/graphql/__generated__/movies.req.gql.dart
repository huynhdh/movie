// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:movie/data/remote/graphql/__generated__/movies.ast.gql.dart'
    as _i5;
import 'package:movie/data/remote/graphql/__generated__/movies.data.gql.dart'
    as _i2;
import 'package:movie/data/remote/graphql/__generated__/movies.var.gql.dart'
    as _i3;
import 'package:movie/data/remote/graphql/__generated__/serializers.gql.dart'
    as _i6;

part 'movies.req.gql.g.dart';

abstract class GMoviesReq
    implements
        Built<GMoviesReq, GMoviesReqBuilder>,
        _i1.OperationRequest<_i2.GMoviesData, _i3.GMoviesVars> {
  GMoviesReq._();

  factory GMoviesReq([void Function(GMoviesReqBuilder b) updates]) =
      _$GMoviesReq;

  static void _initializeBuilder(GMoviesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Movies',
    )
    ..executeOnListen = true;

  @override
  _i3.GMoviesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GMoviesData? Function(
    _i2.GMoviesData?,
    _i2.GMoviesData?,
  )? get updateResult;
  @override
  _i2.GMoviesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GMoviesData? parseData(Map<String, dynamic> json) =>
      _i2.GMoviesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GMoviesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GMoviesData, _i3.GMoviesVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GMoviesReq> get serializer => _$gMoviesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMoviesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMoviesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMoviesReq.serializer,
        json,
      );
}
