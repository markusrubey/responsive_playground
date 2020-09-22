import 'package:responsive_playground/features/feed/feed_item.dart';
import 'package:responsive_playground/resources/resources.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: EdgeInsets.symmetric(
        vertical: context.margins.medium,
        horizontal: context.margins.medium + context.horizontalMarginAddition,
      ),
      crossAxisSpacing: context.gutters.small,
      mainAxisSpacing: context.gutters.small,
      crossAxisCount: context.crossAxisCount,
      childAspectRatio: 3.0 / 4.0,
      children: <Widget>[
        FeedItem(
          title: 'Display',
          content: '${context.display.size}',
        ),
        FeedItem(
          title: 'Spacings',
          content: Spacings().toString(),
        ),
        FeedItem(
          title: 'Paddings',
          content: context.paddings.toString(),
        ),
        FeedItem(
          title: 'Margins',
          content: context.margins.toString(),
        ),
        FeedItem(
          title: 'Gutters',
          content: context.gutters.toString(),
        ),
        FeedItem(
          title: 'Columns',
          content: context.columns.toString(),
        ),
      ],
    );
  }
}

extension _FeedPageSpecs on BuildContext {
  double get horizontalMarginAddition {
    switch (display.size) {
      case DisplaySize.xsmall:
      case DisplaySize.small:
        return 0.0;
      case DisplaySize.medium:
        return 62.0;
      case DisplaySize.large:
      case DisplaySize.xlarge:
        return 16.0;
      default:
        return 0.0;
    }
  }

  int get crossAxisCount {
    switch (display.size) {
      case DisplaySize.xsmall:
        return 2;
      case DisplaySize.small:
        return 3;
      case DisplaySize.medium:
        return 3;
      case DisplaySize.large:
        return 4;
      case DisplaySize.xlarge:
        return 5;
      default:
        return 1;
    }
  }
}
