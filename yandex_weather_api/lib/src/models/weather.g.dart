// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Weather',
      json,
      ($checkedConvert) {
        final val = Weather(
          now: $checkedConvert(
              'now', (v) => const DateTimeJsonConverter().fromJson(v as int)),
          info: $checkedConvert(
              'info', (v) => Location.fromJson(v as Map<String, dynamic>)),
          fact: $checkedConvert(
              'fact', (v) => FactWeather.fromJson(v as Map<String, dynamic>)),
          forecast: $checkedConvert('forecast',
              (v) => ForecastWeather.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
