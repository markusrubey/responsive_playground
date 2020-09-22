import 'package:responsive_playground/resources/resources.dart';
import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  final String title;
  final String content;

  const FeedItem({
    Key key,
    this.title,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(context.paddings.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.subtitle1),
            const SizedBox(height: Spacings.small),
            Text(
              content,
            ),
          ],
        ),
      ),
    );
  }
}
