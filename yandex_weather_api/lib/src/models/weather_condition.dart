import 'package:json_annotation/json_annotation.dart';

import '../helpers/enum.dart';

class WeatherCondition extends Enum<String> {
  const WeatherCondition._(String value) : super(value);

  /// Enum погодных условий
  /// clear — ясно.
  /// partly-cloudy,// — малооблачно.
  /// cloudy — облачно с прояснениями.
  /// overcast — пасмурно.
  /// drizzle — морось.
  /// light-rain — небольшой дождь.
  /// rain — дождь.
  /// moderate-rain — умеренно сильный дождь.
  /// heavy-rain — сильный дождь.
  /// continuous-heavy-rain — длительный сильный дождь.
  /// showers — ливень.
  /// wet-snow — дождь со снегом.
  /// light-snow — небольшой снег.
  /// snow — снег.
  /// snow-showers — снегопад.
  /// hail — град.
  /// thunderstorm — гроза.
  /// thunderstorm-with-rain — дождь с грозой.
  /// thunderstorm-with-hail — гроза с градом.
  ///

  static const WeatherCondition clear = WeatherCondition._("clear");
  static const WeatherCondition partlyCloud =
      WeatherCondition._("partly-cloud");
  static const WeatherCondition cloudy = WeatherCondition._("cloudy");
  static const WeatherCondition overcast = WeatherCondition._("overcast");
  static const WeatherCondition drizzle = WeatherCondition._("drizzle");
  static const WeatherCondition lightRain = WeatherCondition._("light-rain");
  static const WeatherCondition rain = WeatherCondition._("rain");
  static const WeatherCondition moderateRain =
      WeatherCondition._("moderate-rain");
  static const WeatherCondition heavyRain = WeatherCondition._("heavy-rain");
  static const WeatherCondition continuousHeavyRain =
      WeatherCondition._("continuous-heavy-rain");
  static const WeatherCondition showers = WeatherCondition._("showers");
  static const WeatherCondition wetSnow = WeatherCondition._("wet-snow");
  static const WeatherCondition lightSnow = WeatherCondition._("light-snow");
  static const WeatherCondition snow = WeatherCondition._("snow");
  static const WeatherCondition snowShowers =
      WeatherCondition._("snow-showers");
  static const WeatherCondition hail = WeatherCondition._("hail");
  static const WeatherCondition thunderstorm =
      WeatherCondition._("thunderstorm");
  static const WeatherCondition thunderstormWithRain =
      WeatherCondition._("thunderstorm-with-rain");
  static const WeatherCondition thunderstormWithHail =
      WeatherCondition._("thunderstorm-with-hail");

  static WeatherCondition fromValue(String value) => WeatherCondition._(value);

  static String toValue(WeatherCondition index) => index.value;
}
