extension BoolExtensions<T> on bool {
  /// Returns [value] if true. Otherwise null.
  T operator [](T value) {
    if (this == true) {
      return value;
    } else {
      return null;
    }
  }
}
