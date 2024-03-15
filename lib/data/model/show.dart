import 'package:freezed_annotation/freezed_annotation.dart';
part 'show.freezed.dart';
part 'show.g.dart';

@freezed
class Show with _$Show {
  factory Show({
    final int? id,
    final String? url,
    final String? name,
    final String? type,
    final String? language,
    final List<String>? genres,
    final String? status,
    final int? runtime,
    final int? averageRuntime,
    final String? premiered,
    final String? ended,
    final String? officialSite,
    final Schedule? schedule,
    final Rating? rating,
    final int? weight,
    final Network? network,
    final String? webChannel,
    final String? dvdCountry,
    final Externals? externals,
    final Image? image,
    final String? summary,
    final int? updated,
    final Links? links,
  }) = _Show;

  factory Show.fromJson(Map<String, dynamic> json) => _$ShowFromJson(json);
}

@freezed
class Schedule with _$Schedule {
  factory Schedule({
    final String? time,
    final List<String>? days,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
class Rating with _$Rating {
  factory Rating({
    final double? average,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class Network with _$Network {
  factory Network({
    final int? id,
    final String? name,
    final Country? country,
    final String? officialSite,
  }) = _Network;

  factory Network.fromJson(Map<String, dynamic> json) =>
      _$NetworkFromJson(json);
}

@freezed
class Country with _$Country {
  factory Country({
    final String? name,
    final String? code,
    final String? timezone,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
class Externals with _$Externals {
  factory Externals({
    final int? tvrage,
    final int? thetvdb,
    final String? imdb,
  }) = _Externals;

  factory Externals.fromJson(Map<String, dynamic> json) =>
      _$ExternalsFromJson(json);
}

@freezed
class Image with _$Image {
  factory Image({
    final String? medium,
    final String? original,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Links with _$Links {
  factory Links({
    final Self? self,
    final Previousepisode? previousepisode,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Self with _$Self {
  factory Self({
    final String? href,
  }) = _Self;

  factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);
}

@freezed
class Previousepisode with _$Previousepisode {
  factory Previousepisode({
    final String? href,
  }) = _Previousepisode;

  factory Previousepisode.fromJson(Map<String, dynamic> json) =>
      _$PreviousepisodeFromJson(json);
}
