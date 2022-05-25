import 'package:json_annotation/json_annotation.dart';

class DateTimeJsonConverter implements JsonConverter<DateTime, int> {
  const DateTimeJsonConverter();

  @override
  DateTime fromJson(int json) {
    final result = DateTime.fromMillisecondsSinceEpoch(json * 1000);
    return result;
  }

  @override
  int toJson(DateTime object) => (object.millisecondsSinceEpoch) ~/ 1000;
}

class DateTimeNullableJsonConverter implements JsonConverter<DateTime?, int?> {
  const DateTimeNullableJsonConverter();

  @override
  DateTime? fromJson(int? json) => json == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(json * 1000, isUtc: true);

  @override
  int? toJson(DateTime? object) => object == null
      ? null
      : (object.add(DateTime.now().timeZoneOffset).millisecondsSinceEpoch) ~/
          1000;
}

class BoolJsonConverter implements JsonConverter<bool?, int?> {
  const BoolJsonConverter();

  @override
  bool? fromJson(int? json) => json == null
      ? null
      : (json == 1)
          ? true
          : false;

  @override
  int? toJson(bool? object) => object == null
      ? null
      : (object)
          ? 1
          : 0;
}
