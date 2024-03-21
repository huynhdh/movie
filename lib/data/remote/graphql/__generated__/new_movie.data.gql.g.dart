// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_movie.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateMovieData> _$gCreateMovieDataSerializer =
    new _$GCreateMovieDataSerializer();
Serializer<GCreateMovieData_createMovie>
    _$gCreateMovieDataCreateMovieSerializer =
    new _$GCreateMovieData_createMovieSerializer();
Serializer<GCreateMovieData_createMovie_movie>
    _$gCreateMovieDataCreateMovieMovieSerializer =
    new _$GCreateMovieData_createMovie_movieSerializer();

class _$GCreateMovieDataSerializer
    implements StructuredSerializer<GCreateMovieData> {
  @override
  final Iterable<Type> types = const [GCreateMovieData, _$GCreateMovieData];
  @override
  final String wireName = 'GCreateMovieData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateMovieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createMovie',
      serializers.serialize(object.createMovie,
          specifiedType: const FullType(GCreateMovieData_createMovie)),
    ];

    return result;
  }

  @override
  GCreateMovieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateMovieDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createMovie':
          result.createMovie.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCreateMovieData_createMovie))!
              as GCreateMovieData_createMovie);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateMovieData_createMovieSerializer
    implements StructuredSerializer<GCreateMovieData_createMovie> {
  @override
  final Iterable<Type> types = const [
    GCreateMovieData_createMovie,
    _$GCreateMovieData_createMovie
  ];
  @override
  final String wireName = 'GCreateMovieData_createMovie';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateMovieData_createMovie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.movie;
    if (value != null) {
      result
        ..add('movie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCreateMovieData_createMovie_movie)));
    }
    return result;
  }

  @override
  GCreateMovieData_createMovie deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateMovieData_createMovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'movie':
          result.movie.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateMovieData_createMovie_movie))!
              as GCreateMovieData_createMovie_movie);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateMovieData_createMovie_movieSerializer
    implements StructuredSerializer<GCreateMovieData_createMovie_movie> {
  @override
  final Iterable<Type> types = const [
    GCreateMovieData_createMovie_movie,
    _$GCreateMovieData_createMovie_movie
  ];
  @override
  final String wireName = 'GCreateMovieData_createMovie_movie';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateMovieData_createMovie_movie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateMovieData_createMovie_movie deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateMovieData_createMovie_movieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateMovieData extends GCreateMovieData {
  @override
  final String G__typename;
  @override
  final GCreateMovieData_createMovie createMovie;

  factory _$GCreateMovieData(
          [void Function(GCreateMovieDataBuilder)? updates]) =>
      (new GCreateMovieDataBuilder()..update(updates))._build();

  _$GCreateMovieData._({required this.G__typename, required this.createMovie})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateMovieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createMovie, r'GCreateMovieData', 'createMovie');
  }

  @override
  GCreateMovieData rebuild(void Function(GCreateMovieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateMovieDataBuilder toBuilder() =>
      new GCreateMovieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateMovieData &&
        G__typename == other.G__typename &&
        createMovie == other.createMovie;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createMovie.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateMovieData')
          ..add('G__typename', G__typename)
          ..add('createMovie', createMovie))
        .toString();
  }
}

class GCreateMovieDataBuilder
    implements Builder<GCreateMovieData, GCreateMovieDataBuilder> {
  _$GCreateMovieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateMovieData_createMovieBuilder? _createMovie;
  GCreateMovieData_createMovieBuilder get createMovie =>
      _$this._createMovie ??= new GCreateMovieData_createMovieBuilder();
  set createMovie(GCreateMovieData_createMovieBuilder? createMovie) =>
      _$this._createMovie = createMovie;

  GCreateMovieDataBuilder() {
    GCreateMovieData._initializeBuilder(this);
  }

  GCreateMovieDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createMovie = $v.createMovie.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateMovieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateMovieData;
  }

  @override
  void update(void Function(GCreateMovieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateMovieData build() => _build();

  _$GCreateMovieData _build() {
    _$GCreateMovieData _$result;
    try {
      _$result = _$v ??
          new _$GCreateMovieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateMovieData', 'G__typename'),
              createMovie: createMovie.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createMovie';
        createMovie.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateMovieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateMovieData_createMovie extends GCreateMovieData_createMovie {
  @override
  final String G__typename;
  @override
  final int code;
  @override
  final String message;
  @override
  final bool success;
  @override
  final GCreateMovieData_createMovie_movie? movie;

  factory _$GCreateMovieData_createMovie(
          [void Function(GCreateMovieData_createMovieBuilder)? updates]) =>
      (new GCreateMovieData_createMovieBuilder()..update(updates))._build();

  _$GCreateMovieData_createMovie._(
      {required this.G__typename,
      required this.code,
      required this.message,
      required this.success,
      this.movie})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateMovieData_createMovie', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GCreateMovieData_createMovie', 'code');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GCreateMovieData_createMovie', 'message');
    BuiltValueNullFieldError.checkNotNull(
        success, r'GCreateMovieData_createMovie', 'success');
  }

  @override
  GCreateMovieData_createMovie rebuild(
          void Function(GCreateMovieData_createMovieBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateMovieData_createMovieBuilder toBuilder() =>
      new GCreateMovieData_createMovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateMovieData_createMovie &&
        G__typename == other.G__typename &&
        code == other.code &&
        message == other.message &&
        success == other.success &&
        movie == other.movie;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, movie.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateMovieData_createMovie')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('message', message)
          ..add('success', success)
          ..add('movie', movie))
        .toString();
  }
}

class GCreateMovieData_createMovieBuilder
    implements
        Builder<GCreateMovieData_createMovie,
            GCreateMovieData_createMovieBuilder> {
  _$GCreateMovieData_createMovie? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GCreateMovieData_createMovie_movieBuilder? _movie;
  GCreateMovieData_createMovie_movieBuilder get movie =>
      _$this._movie ??= new GCreateMovieData_createMovie_movieBuilder();
  set movie(GCreateMovieData_createMovie_movieBuilder? movie) =>
      _$this._movie = movie;

  GCreateMovieData_createMovieBuilder() {
    GCreateMovieData_createMovie._initializeBuilder(this);
  }

  GCreateMovieData_createMovieBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _message = $v.message;
      _success = $v.success;
      _movie = $v.movie?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateMovieData_createMovie other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateMovieData_createMovie;
  }

  @override
  void update(void Function(GCreateMovieData_createMovieBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateMovieData_createMovie build() => _build();

  _$GCreateMovieData_createMovie _build() {
    _$GCreateMovieData_createMovie _$result;
    try {
      _$result = _$v ??
          new _$GCreateMovieData_createMovie._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateMovieData_createMovie', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GCreateMovieData_createMovie', 'code'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GCreateMovieData_createMovie', 'message'),
              success: BuiltValueNullFieldError.checkNotNull(
                  success, r'GCreateMovieData_createMovie', 'success'),
              movie: _movie?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movie';
        _movie?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateMovieData_createMovie', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateMovieData_createMovie_movie
    extends GCreateMovieData_createMovie_movie {
  @override
  final String G__typename;
  @override
  final String title;

  factory _$GCreateMovieData_createMovie_movie(
          [void Function(GCreateMovieData_createMovie_movieBuilder)?
              updates]) =>
      (new GCreateMovieData_createMovie_movieBuilder()..update(updates))
          ._build();

  _$GCreateMovieData_createMovie_movie._(
      {required this.G__typename, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateMovieData_createMovie_movie', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GCreateMovieData_createMovie_movie', 'title');
  }

  @override
  GCreateMovieData_createMovie_movie rebuild(
          void Function(GCreateMovieData_createMovie_movieBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateMovieData_createMovie_movieBuilder toBuilder() =>
      new GCreateMovieData_createMovie_movieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateMovieData_createMovie_movie &&
        G__typename == other.G__typename &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateMovieData_createMovie_movie')
          ..add('G__typename', G__typename)
          ..add('title', title))
        .toString();
  }
}

class GCreateMovieData_createMovie_movieBuilder
    implements
        Builder<GCreateMovieData_createMovie_movie,
            GCreateMovieData_createMovie_movieBuilder> {
  _$GCreateMovieData_createMovie_movie? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GCreateMovieData_createMovie_movieBuilder() {
    GCreateMovieData_createMovie_movie._initializeBuilder(this);
  }

  GCreateMovieData_createMovie_movieBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateMovieData_createMovie_movie other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateMovieData_createMovie_movie;
  }

  @override
  void update(
      void Function(GCreateMovieData_createMovie_movieBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateMovieData_createMovie_movie build() => _build();

  _$GCreateMovieData_createMovie_movie _build() {
    final _$result = _$v ??
        new _$GCreateMovieData_createMovie_movie._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCreateMovieData_createMovie_movie', 'G__typename'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GCreateMovieData_createMovie_movie', 'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
