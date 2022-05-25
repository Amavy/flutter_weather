abstract class Enum<T> {
  final T value;

  const Enum(this.value);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(o) => o is Enum && value == o.value;
}
