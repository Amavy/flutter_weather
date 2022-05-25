import 'package:json_annotation/json_annotation.dart';
import 'package:yandex_weather_api/src/helpers/custom_json_formatters.dart';

import 'weather_condition.dart';
import 'wind_direction.dart';

part 'fact_weather.g.dart';

/// Объект содержит информацию о погоде на данный момент.
///
/// https://yandex.ru/dev/weather/doc/dg/concepts/forecast-info.html#resp-format__fact

@JsonSerializable()
@DateTimeJsonConverter()
class FactWeather {
  final num temp;
  @JsonKey(name: "feels_like")
  final num feelsLike;
  @JsonKey(name: "temp_water")
  final num tempWater;
  final String icon;
  @JsonKey(fromJson: WeatherCondition.fromValue)
  final WeatherCondition condition;
  @JsonKey(name: "wind_speed")
  final num windSpeed;
  @JsonKey(name: "wind_gust")
  final num windGust;
  @JsonKey(name: "wind_dir", fromJson: WindDirection.fromValue)
  final WindDirection windDirection;
  @JsonKey(name: "pressure_mm")
  final num pressureMm;
  @JsonKey(name: "pressure_pa")
  final num pressurePa;
  final num humidity;

  //final Daytime daytime;
  final bool polar;

  //final Season season;
  @JsonKey(name: "obs_time")
  final DateTime obsTime;

  const FactWeather({
    required this.temp,
    required this.feelsLike,
    required this.tempWater,
    required this.icon,
    required this.condition,
    required this.windSpeed,
    required this.windGust,
    required this.windDirection,
    required this.humidity,
    required this.pressureMm,
    required this.pressurePa,
    required this.obsTime,
    required this.polar,
  });

  factory FactWeather.fromJson(Map<String, dynamic> json) =>
      _$FactWeatherFromJson(json);
}
