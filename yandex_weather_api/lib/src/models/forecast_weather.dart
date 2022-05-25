import 'package:json_annotation/json_annotation.dart';
import 'package:yandex_weather_api/src/helpers/custom_json_formatters.dart';
import 'package:yandex_weather_api/src/models/weather_condition.dart';
import 'package:yandex_weather_api/src/models/weather_part.dart';
import 'package:yandex_weather_api/src/models/wind_direction.dart';

part 'forecast_weather.g.dart';

///
/// https://yandex.ru/dev/weather/doc/dg/concepts/forecast-info.html#resp-format__forecasts

@JsonSerializable()
@DateTimeJsonConverter()
class ForecastWeather {
  final String date;
  final DateTime date_ts;
  final int week;
  final String? sunrise;
  final String? sunset;

  /// Код фазы Луны. Возможные значения:
  /// 0 — полнолуние.
  /// 1-3 — убывающая Луна.
  /// 4 — последняя четверть.
  /// 5-7 — убывающая Луна.
  /// 8 — новолуние.
  /// 9-11 — растущая Луна.
  /// 12 — первая четверть.
  /// 13-15 — растущая Луна.
  final int moon_code;

  /// Текстовый код для фазы Луны. Возможные значения:
  /// moon-code-0 — полнолуние.
  /// moon-code-1 — убывающая луна.
  /// moon-code-2 — убывающая луна.
  /// moon-code-3 — убывающая луна.
  /// moon-code-4 — последняя четверть.
  /// moon-code-5 — убывающая луна.
  /// moon-code-6 — убывающая луна.
  /// moon-code-7 — убывающая луна.
  /// moon-code-8 — новолуние.
  /// moon-code-9 — растущая луна.
  /// moon-code-10 — растущая луна.
  /// moon-code-11 — растущая луна.
  /// moon-code-12 — первая четверть.
  /// moon-code-13 — растущая луна.
  /// moon-code-14 — растущая луна.
  /// moon-code-15 — растущая луна.
  final String moon_text;

  final List<WeatherPart> parts;

  /// Название времени суток. Возможные значения:
  /// night — ночь.
  /// morning — утро.
  /// day — день.
  /// evening — вечер.
  final String part_name;

  final num temp_min;
  final num temp_max;
  final num temp_avg;
  final num feels_like;
  final String icon;
  @JsonKey(fromJson: WeatherCondition.fromValue)
  final WeatherCondition condition;

  /// Светлое или темное время суток. Возможные значения:
  /// «d» — светлое время суток.
  /// «n» — темное время суток.
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

  ForecastWeather({
    required this.date,
    required this.date_ts,
    required this.week,
    required this.sunrise,
    required this.sunset,
    required this.moon_code,
    required this.moon_text,
    required this.parts,
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

  factory ForecastWeather.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherFromJson(json);
}
