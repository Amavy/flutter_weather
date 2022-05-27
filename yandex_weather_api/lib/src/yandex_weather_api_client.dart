import 'dart:convert';

import 'package:dio/dio.dart';

import '../yandex_weather_api.dart';

class LocationIdRequestFailure implements Exception {}

/// Exception thrown when the provided location is not found.
class LocationNotFoundFailure implements Exception {}

/// Exception thrown when getWeather fails.
class WeatherRequestFailure implements Exception {}

/// Exception thrown when weather for provided location is not found.
class WeatherNotFoundFailure implements Exception {}

class YandexWeatherApiClient {
  YandexWeatherApiClient({Dio? dioClient, required this.apiKey})
      : _dioClient = dioClient ?? Dio() {
    _dioClient.interceptors.add(LogInterceptor());
    _dioClient.options = BaseOptions(
      baseUrl: "https://api.weather.yandex.ru/v2",
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
  }

  final Dio _dioClient;
  final String apiKey;

  Future<Weather> getWeather(double lat, double lon) async {
    Response weatherResponse =
        await _dioClient.get('/v2/informers', queryParameters: <String, String>{
      "lat": lat.toString(),
      "lon": lon.toString(),
      "X-Yandex-API-Key": apiKey,
    });

    if (weatherResponse.statusCode != 200) {
      throw WeatherRequestFailure();
    }

    final bodyJson = jsonDecode(weatherResponse.data) as Map<String, dynamic>;

    if (bodyJson.isEmpty) {
      throw WeatherNotFoundFailure();
    }

    return Weather.fromJson(bodyJson);
  }
}
