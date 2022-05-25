import 'package:json_annotation/json_annotation.dart';
import 'package:yandex_weather_api/src/models/weather_condition.dart';
import 'package:yandex_weather_api/src/models/wind_direction.dart';

part 'weather_part.g.dart';

@JsonSerializable()
class WeatherPart {
  // Название времени суток. Возможные значения:
  // night — ночь.
  // morning — утро.
  // day — день.
  // evening — вечер.
  final String part_name;
  final num temp_min;
  final num temp_max;
  final num temp_avg;
  final num feels_like;
  final String icon;
  @JsonKey(fromJson: WeatherCondition.fromValue)
  final WeatherCondition condition;

  // Светлое или темное время суток. Возможные значения:
  // «d» — светлое время суток.
  // «n» — темное время суток.
  final String daytime;
  final bool polar;
  final num wind_speed;
  final num wind_gust;
  @JsonKey(fromJson: WindDirection.fromValue)
  final WindDirection wind_dir;
  final num pressure_mm;
  final num pressure_pa;
  final num humidity;
  final num prec_mm;
  final num prec_period;
  final num prec_prob;

  const WeatherPart({
    required this.part_name,
    required this.temp_min,
    required this.temp_max,
    required this.temp_avg,
    required this.feels_like,
    required this.icon,
    required this.condition,
    required this.daytime,
    required this.polar,
    required this.wind_speed,
    required this.wind_gust,
    required this.wind_dir,
    required this.pressure_mm,
    required this.pressure_pa,
    required this.humidity,
    required this.prec_mm,
    required this.prec_period,
    required this.prec_prob,
  });

  factory WeatherPart.fromJson(Map<String, dynamic> json) =>
      _$WeatherPartFromJson(json);
}
