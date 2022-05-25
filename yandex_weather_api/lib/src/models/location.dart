import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  final String url;
  final double lat;
  final double lon;

  const Location({
    required this.url,
    required this.lat,
    required this.lon,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
