// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'forecast_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastWeather _$ForecastWeatherFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ForecastWeather',
      json,
      ($checkedConvert) {
        final val = ForecastWeather(
          date: $checkedConvert('date', (v) => v as String),
          date_ts: $checkedConvert('date_ts',
              (v) => const DateTimeJsonConverter().fromJson(v as int)),
          week: $checkedConvert('week', (v) => v as int),
          sunrise: $checkedConvert('sunrise', (v) => v as String?),
          sunset: $checkedConvert('sunset', (v) => v as String?),
          moon_code: $checkedConvert('moon_code', (v) => v as int),
          moon_text: $checkedConvert('moon_text', (v) => v as String),
          parts: $checkedConvert(
              'parts',
              (v) => (v as List<dynamic>)
                  .map((e) => WeatherPart.fromJson(e as Map<String, dynamic>))
                  .toList()),
          part_name: $checkedConvert('part_name', (v) => v as String),
          temp_min: $checkedConvert('temp_min', (v) => v as num),
          temp_max: $checkedConvert('temp_max', (v) => v as num),
          temp_avg: $checkedConvert('temp_avg', (v) => v as num),
          feels_like: $checkedConvert('feels_like', (v) => v as num),
          icon: $checkedConvert('icon', (v) => v as String),
          condition: $checkedConvert(
              'condition', (v) => WeatherCondition.fromValue(v as String)),
          daytime: $checkedConvert('daytime', (v) => v as String),
          polar: $checkedConvert('polar', (v) => v as bool),
          wind_speed: $checkedConvert('wind_speed', (v) => v as num),
          wind_gust: $checkedConvert('wind_gust', (v) => v as num),
          wind_dir: $checkedConvert(
              'wind_dir', (v) => WindDirection.fromValue(v as String)),
          pressure_mm: $checkedConvert('pressure_mm', (v) => v as num),
          pressure_pa: $checkedConvert('pressure_pa', (v) => v as num),
          humidity: $checkedConvert('humidity', (v) => v as num),
          prec_mm: $checkedConvert('prec_mm', (v) => v as num),
          prec_period: $checkedConvert('prec_period', (v) => v as num),
          prec_prob: $checkedConvert('prec_prob', (v) => v as num),
        );
        return val;
      },
    );
