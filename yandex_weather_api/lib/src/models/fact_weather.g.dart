// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'fact_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FactWeather _$FactWeatherFromJson(Map<String, dynamic> json) => $checkedCreate(
      'FactWeather',
      json,
      ($checkedConvert) {
        final val = FactWeather(
          temp: $checkedConvert('temp', (v) => v as num),
          feelsLike: $checkedConvert('feels_like', (v) => v as num),
          tempWater: $checkedConvert('temp_water', (v) => v as num),
          icon: $checkedConvert('icon', (v) => v as String),
          condition: $checkedConvert(
              'condition', (v) => WeatherCondition.fromValue(v as String)),
          windSpeed: $checkedConvert('wind_speed', (v) => v as num),
          windGust: $checkedConvert('wind_gust', (v) => v as num),
          windDirection: $checkedConvert(
              'wind_dir', (v) => WindDirection.fromValue(v as String)),
          humidity: $checkedConvert('humidity', (v) => v as num),
          pressureMm: $checkedConvert('pressure_mm', (v) => v as num),
          pressurePa: $checkedConvert('pressure_pa', (v) => v as num),
          obsTime: $checkedConvert('obs_time',
              (v) => const DateTimeJsonConverter().fromJson(v as int)),
          polar: $checkedConvert('polar', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'feelsLike': 'feels_like',
        'tempWater': 'temp_water',
        'windSpeed': 'wind_speed',
        'windGust': 'wind_gust',
        'windDirection': 'wind_dir',
        'pressureMm': 'pressure_mm',
        'pressurePa': 'pressure_pa',
        'obsTime': 'obs_time'
      },
    );
