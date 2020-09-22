import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'display.dart';

class Margins {
  final Display display;

  Margins({
    @required this.display,
  });

  double get small {
    switch (display.size) {
      case DisplaySize.xsmall:
        return 8.0;
      case DisplaySize.small:
        return 8.0;
      case DisplaySize.medium:
        return 12.0;
      case DisplaySize.large:
        return 12.0;
      case DisplaySize.xlarge:
        return 16.0;
      default:
        return 0.0;
    }
  }

  double get medium {
    switch (display.size) {
      case DisplaySize.xsmall:
        return 16.0;
      case DisplaySize.small:
        return 16.0;
      case DisplaySize.medium:
        return 24.0;
      case DisplaySize.large:
        return 24.0;
      case DisplaySize.xlarge:
        return 32.0;
      default:
        return 0.0;
    }
  }

  double get large {
    switch (display.size) {
      case DisplaySize.xsmall:
        return 32.0;
      case DisplaySize.small:
        return 32.0;
      case DisplaySize.medium:
        return 48.0;
      case DisplaySize.large:
        return 48.0;
      case DisplaySize.xlarge:
        return 64.0;
      default:
        return 0.0;
    }
  }

  @override
  String toString() => 'small: $small\n'
      'medium: $medium\n'
      'large: $large';
}

extension BuildContextMargins on BuildContext {
  Margins get margins => Margins(display: display);
}
