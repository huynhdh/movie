// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMoviesData> _$gMoviesDataSerializer = new _$GMoviesDataSerializer();
Serializer<GMoviesData_movies> _$gMoviesDataMoviesSerializer =
    new _$GMoviesData_moviesSerializer();

class _$GMoviesDataSerializer implements StructuredSerializer<GMoviesData> {
  @override
  final Iterable<Type> types = const [GMoviesData, _$GMoviesData];
  @override
  final String wireName = 'GMoviesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMoviesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'movies',
      serializers.serialize(object.movies,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GMoviesData_movies)])),
    ];

    return result;
  }

  @override
  GMoviesData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMoviesDataBuilder();

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
        case 'movies':
          result.movies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GMoviesData_movies)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMoviesData_moviesSerializer
    implements StructuredSerializer<GMoviesData_movies> {
  @override
  final Iterable<Type> types = const [GMoviesData_movies, _$GMoviesData_movies];
  @override
  final String wireName = 'GMoviesData_movies';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMoviesData_movies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'director',
      serializers.serialize(object.director,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GMoviesData_movies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMoviesData_moviesBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'director':
          result.director = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GMoviesData extends GMoviesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GMoviesData_movies> movies;

  factory _$GMoviesData([void Function(GMoviesDataBuilder)? updates]) =>
      (new GMoviesDataBuilder()..update(updates))._build();

  _$GMoviesData._({required this.G__typename, required this.movies})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMoviesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(movies, r'GMoviesData', 'movies');
  }

  @override
  GMoviesData rebuild(void Function(GMoviesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMoviesDataBuilder toBuilder() => new GMoviesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMoviesData &&
        G__typename == other.G__typename &&
        movies == other.movies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, movies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMoviesData')
          ..add('G__typename', G__typename)
          ..add('movies', movies))
        .toString();
  }
}

class GMoviesDataBuilder implements Builder<GMoviesData, GMoviesDataBuilder> {
  _$GMoviesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMoviesData_movies>? _movies;
  ListBuilder<GMoviesData_movies> get movies =>
      _$this._movies ??= new ListBuilder<GMoviesData_movies>();
  set movies(ListBuilder<GMoviesData_movies>? movies) =>
      _$this._movies = movies;

  GMoviesDataBuilder() {
    GMoviesData._initializeBuilder(this);
  }

  GMoviesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _movies = $v.movies.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMoviesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMoviesData;
  }

  @override
  void update(void Function(GMoviesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMoviesData build() => _build();

  _$GMoviesData _build() {
    _$GMoviesData _$result;
    try {
      _$result = _$v ??
          new _$GMoviesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMoviesData', 'G__typename'),
              movies: movies.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMoviesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMoviesData_movies extends GMoviesData_movies {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final String director;

  factory _$GMoviesData_movies(
          [void Function(GMoviesData_moviesBuilder)? updates]) =>
      (new GMoviesData_moviesBuilder()..update(updates))._build();

  _$GMoviesData_movies._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.director})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMoviesData_movies', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GMoviesData_movies', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GMoviesData_movies', 'title');
    BuiltValueNullFieldError.checkNotNull(
        director, r'GMoviesData_movies', 'director');
  }

  @override
  GMoviesData_movies rebuild(
          void Function(GMoviesData_moviesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMoviesData_moviesBuilder toBuilder() =>
      new GMoviesData_moviesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMoviesData_movies &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        director == other.director;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, director.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMoviesData_movies')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('director', director))
        .toString();
  }
}

class GMoviesData_moviesBuilder
    implements Builder<GMoviesData_movies, GMoviesData_moviesBuilder> {
  _$GMoviesData_movies? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _director;
  String? get director => _$this._director;
  set director(String? director) => _$this._director = director;

  GMoviesData_moviesBuilder() {
    GMoviesData_movies._initializeBuilder(this);
  }

  GMoviesData_moviesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _director = $v.director;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMoviesData_movies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMoviesData_movies;
  }

  @override
  void update(void Function(GMoviesData_moviesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMoviesData_movies build() => _build();

  _$GMoviesData_movies _build() {
    final _$result = _$v ??
        new _$GMoviesData_movies._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMoviesData_movies', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GMoviesData_movies', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GMoviesData_movies', 'title'),
            director: BuiltValueNullFieldError.checkNotNull(
                director, r'GMoviesData_movies', 'director'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
