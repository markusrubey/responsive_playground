import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Display {
  final DisplaySize size;
  final Orientation orientation;

  Display({
    @required this.size,
    @required this.orientation,
  });
}

enum DisplaySize {
  /// 0 - 599
  xsmall,

  /// 600 - 1023
  small,

  /// 1024 - 1439
  medium,

  /// 1440 - 1919
  large,

  /// 1920 +
  xlarge,
}

extension SizeDisplaySize on Size {
  DisplaySize toDisplaySize() {
    if (width <= 599) {
      return DisplaySize.xsmall;
    } else if (width <= 1023) {
      return DisplaySize.small;
    } else if (width <= 1439) {
      return DisplaySize.medium;
    } else if (width <= 1919) {
      return DisplaySize.large;
    } else {
      return DisplaySize.xlarge;
    }
  }
}

extension MediaQueryDataDisplay on MediaQueryData {
  Display get display => Display(
        size: size.toDisplaySize(),
        orientation: orientation,
      );
}

extension BuildContextDisplay on BuildContext {
  Display get display => MediaQuery.of(this).display;
}
