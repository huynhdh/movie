// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMoviesVars> _$gMoviesVarsSerializer = new _$GMoviesVarsSerializer();

class _$GMoviesVarsSerializer implements StructuredSerializer<GMoviesVars> {
  @override
  final Iterable<Type> types = const [GMoviesVars, _$GMoviesVars];
  @override
  final String wireName = 'GMoviesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMoviesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GMoviesVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GMoviesVarsBuilder().build();
  }
}

class _$GMoviesVars extends GMoviesVars {
  factory _$GMoviesVars([void Function(GMoviesVarsBuilder)? updates]) =>
      (new GMoviesVarsBuilder()..update(updates))._build();

  _$GMoviesVars._() : super._();

  @override
  GMoviesVars rebuild(void Function(GMoviesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMoviesVarsBuilder toBuilder() => new GMoviesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMoviesVars;
  }

  @override
  int get hashCode {
    return 543030160;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GMoviesVars').toString();
  }
}

class GMoviesVarsBuilder implements Builder<GMoviesVars, GMoviesVarsBuilder> {
  _$GMoviesVars? _$v;

  GMoviesVarsBuilder();

  @override
  void replace(GMoviesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMoviesVars;
  }

  @override
  void update(void Function(GMoviesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMoviesVars build() => _build();

  _$GMoviesVars _build() {
    final _$result = _$v ?? new _$GMoviesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
