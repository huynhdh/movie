// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      year: json['year'] as int?,
      director: json['director'] as String?,
      genre: json['genre'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      poster: json['poster'] as String?,
      banner: json['banner'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'director': instance.director,
      'genre': instance.genre,
      'rating': instance.rating,
      'poster': instance.poster,
      'banner': instance.banner,
      'description': instance.description,
    };
