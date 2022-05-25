// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'weather_part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherPart _$WeatherPartFromJson(Map<String, dynamic> json) => $checkedCreate(
      'WeatherPart',
      json,
      ($checkedConvert) {
        final val = WeatherPart(
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
