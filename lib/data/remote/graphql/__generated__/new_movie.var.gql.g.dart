// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_movie.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateMovieVars> _$gCreateMovieVarsSerializer =
    new _$GCreateMovieVarsSerializer();

class _$GCreateMovieVarsSerializer
    implements StructuredSerializer<GCreateMovieVars> {
  @override
  final Iterable<Type> types = const [GCreateMovieVars, _$GCreateMovieVars];
  @override
  final String wireName = 'GCreateMovieVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateMovieVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'movie',
      serializers.serialize(object.movie,
          specifiedType: const FullType(_i1.GMovieInput)),
    ];

    return result;
  }

  @override
  GCreateMovieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateMovieVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'movie':
          result.movie.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMovieInput))!
              as _i1.GMovieInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateMovieVars extends GCreateMovieVars {
  @override
  final _i1.GMovieInput movie;

  factory _$GCreateMovieVars(
          [void Function(GCreateMovieVarsBuilder)? updates]) =>
      (new GCreateMovieVarsBuilder()..update(updates))._build();

  _$GCreateMovieVars._({required this.movie}) : super._() {
    BuiltValueNullFieldError.checkNotNull(movie, r'GCreateMovieVars', 'movie');
  }

  @override
  GCreateMovieVars rebuild(void Function(GCreateMovieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateMovieVarsBuilder toBuilder() =>
      new GCreateMovieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateMovieVars && movie == other.movie;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, movie.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateMovieVars')
          ..add('movie', movie))
        .toString();
  }
}

class GCreateMovieVarsBuilder
    implements Builder<GCreateMovieVars, GCreateMovieVarsBuilder> {
  _$GCreateMovieVars? _$v;

  _i1.GMovieInputBuilder? _movie;
  _i1.GMovieInputBuilder get movie =>
      _$this._movie ??= new _i1.GMovieInputBuilder();
  set movie(_i1.GMovieInputBuilder? movie) => _$this._movie = movie;

  GCreateMovieVarsBuilder();

  GCreateMovieVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movie = $v.movie.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateMovieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateMovieVars;
  }

  @override
  void update(void Function(GCreateMovieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateMovieVars build() => _build();

  _$GCreateMovieVars _build() {
    _$GCreateMovieVars _$result;
    try {
      _$result = _$v ?? new _$GCreateMovieVars._(movie: movie.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movie';
        movie.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateMovieVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
