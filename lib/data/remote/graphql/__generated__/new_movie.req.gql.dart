// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:movie/data/remote/graphql/__generated__/new_movie.ast.gql.dart'
    as _i5;
import 'package:movie/data/remote/graphql/__generated__/new_movie.data.gql.dart'
    as _i2;
import 'package:movie/data/remote/graphql/__generated__/new_movie.var.gql.dart'
    as _i3;
import 'package:movie/data/remote/graphql/__generated__/serializers.gql.dart'
    as _i6;

part 'new_movie.req.gql.g.dart';

abstract class GCreateMovieReq
    implements
        Built<GCreateMovieReq, GCreateMovieReqBuilder>,
        _i1.OperationRequest<_i2.GCreateMovieData, _i3.GCreateMovieVars> {
  GCreateMovieReq._();

  factory GCreateMovieReq([void Function(GCreateMovieReqBuilder b) updates]) =
      _$GCreateMovieReq;

  static void _initializeBuilder(GCreateMovieReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateMovie',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateMovieVars get vars;
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
  _i2.GCreateMovieData? Function(
    _i2.GCreateMovieData?,
    _i2.GCreateMovieData?,
  )? get updateResult;
  @override
  _i2.GCreateMovieData? get optimisticResponse;
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
  _i2.GCreateMovieData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateMovieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateMovieData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateMovieData, _i3.GCreateMovieVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateMovieReq> get serializer =>
      _$gCreateMovieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateMovieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateMovieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateMovieReq.serializer,
        json,
      );
}
