import 'package:json_annotation/json_annotation.dart';
import 'package:yandex_weather_api/src/helpers/custom_json_formatters.dart';

import 'fact_weather.dart';
import 'forecast_weather.dart';
import 'location.dart';

part 'weather.g.dart';

@JsonSerializable()
@DateTimeJsonConverter()
class Weather {
  final DateTime now;
  final Location info;
  final FactWeather fact;
  final ForecastWeather forecast;

  Weather({
    required this.now,
    required this.info,
    required this.fact,
    required this.forecast,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
