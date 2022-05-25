import '../helpers/enum.dart';

class WindDirection extends Enum<String> {
  const WindDirection._(String value) : super(value);

  static const WindDirection northWest = WindDirection._("nw");
  static const WindDirection north = WindDirection._("n");
  static const WindDirection northEast = WindDirection._("ne");
  static const WindDirection east = WindDirection._("e");
  static const WindDirection southEast = WindDirection._("se");
  static const WindDirection south = WindDirection._("s");
  static const WindDirection southWest = WindDirection._("sw");
  static const WindDirection west = WindDirection._("w");
  static const WindDirection calm = WindDirection._("c");

  static WindDirection fromValue(String value) => WindDirection._(value);

  static String toValue(WindDirection index) => index.value;
}
