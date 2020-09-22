import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'display.dart';

class Columns {
  final Display display;

  Columns({
    @required this.display,
  });

  int get count {
    switch (display.size) {
      case DisplaySize.xsmall:
        return 4;
      case DisplaySize.small:
        return 8;
      case DisplaySize.medium:
        return 12;
      case DisplaySize.large:
        return 12;
      case DisplaySize.xlarge:
        return 12;
      default:
        return 0;
    }
  }

  @override
  String toString() => '$count';
}

extension BuildContextColumns on BuildContext {
  Columns get columns => Columns(display: display);
}










