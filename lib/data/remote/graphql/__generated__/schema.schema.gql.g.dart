// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMovieInput> _$gMovieInputSerializer = new _$GMovieInputSerializer();

class _$GMovieInputSerializer implements StructuredSerializer<GMovieInput> {
  @override
  final Iterable<Type> types = const [GMovieInput, _$GMovieInput];
  @override
  final String wireName = 'GMovieInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMovieInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(int)),
      'director',
      serializers.serialize(object.director,
          specifiedType: const FullType(String)),
      'genre',
      serializers.serialize(object.genre,
          specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(double)),
      'poster',
      serializers.serialize(object.poster,
          specifiedType: const FullType(String)),
      'banner',
      serializers.serialize(object.banner,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GMovieInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMovieInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'director':
          result.director = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'poster':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'banner':
          result.banner = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GMovieInput extends GMovieInput {
  @override
  final String title;
  @override
  final int year;
  @override
  final String director;
  @override
  final String genre;
  @override
  final double rating;
  @override
  final String poster;
  @override
  final String banner;
  @override
  final String description;

  factory _$GMovieInput([void Function(GMovieInputBuilder)? updates]) =>
      (new GMovieInputBuilder()..update(updates))._build();

  _$GMovieInput._(
      {required this.title,
      required this.year,
      required this.director,
      required this.genre,
      required this.rating,
      required this.poster,
      required this.banner,
      required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'GMovieInput', 'title');
    BuiltValueNullFieldError.checkNotNull(year, r'GMovieInput', 'year');
    BuiltValueNullFieldError.checkNotNull(director, r'GMovieInput', 'director');
    BuiltValueNullFieldError.checkNotNull(genre, r'GMovieInput', 'genre');
    BuiltValueNullFieldError.checkNotNull(rating, r'GMovieInput', 'rating');
    BuiltValueNullFieldError.checkNotNull(poster, r'GMovieInput', 'poster');
    BuiltValueNullFieldError.checkNotNull(banner, r'GMovieInput', 'banner');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GMovieInput', 'description');
  }

  @override
  GMovieInput rebuild(void Function(GMovieInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMovieInputBuilder toBuilder() => new GMovieInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMovieInput &&
        title == other.title &&
        year == other.year &&
        director == other.director &&
        genre == other.genre &&
        rating == other.rating &&
        poster == other.poster &&
        banner == other.banner &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, director.hashCode);
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, poster.hashCode);
    _$hash = $jc(_$hash, banner.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMovieInput')
          ..add('title', title)
          ..add('year', year)
          ..add('director', director)
          ..add('genre', genre)
          ..add('rating', rating)
          ..add('poster', poster)
          ..add('banner', banner)
          ..add('description', description))
        .toString();
  }
}

class GMovieInputBuilder implements Builder<GMovieInput, GMovieInputBuilder> {
  _$GMovieInput? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  String? _director;
  String? get director => _$this._director;
  set director(String? director) => _$this._director = director;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  String? _poster;
  String? get poster => _$this._poster;
  set poster(String? poster) => _$this._poster = poster;

  String? _banner;
  String? get banner => _$this._banner;
  set banner(String? banner) => _$this._banner = banner;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GMovieInputBuilder();

  GMovieInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _year = $v.year;
      _director = $v.director;
      _genre = $v.genre;
      _rating = $v.rating;
      _poster = $v.poster;
      _banner = $v.banner;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMovieInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMovieInput;
  }

  @override
  void update(void Function(GMovieInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMovieInput build() => _build();

  _$GMovieInput _build() {
    final _$result = _$v ??
        new _$GMovieInput._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GMovieInput', 'title'),
            year: BuiltValueNullFieldError.checkNotNull(
                year, r'GMovieInput', 'year'),
            director: BuiltValueNullFieldError.checkNotNull(
                director, r'GMovieInput', 'director'),
            genre: BuiltValueNullFieldError.checkNotNull(
                genre, r'GMovieInput', 'genre'),
            rating: BuiltValueNullFieldError.checkNotNull(
                rating, r'GMovieInput', 'rating'),
            poster: BuiltValueNullFieldError.checkNotNull(
                poster, r'GMovieInput', 'poster'),
            banner: BuiltValueNullFieldError.checkNotNull(
                banner, r'GMovieInput', 'banner'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GMovieInput', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
