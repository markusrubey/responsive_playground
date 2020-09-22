import 'package:responsive_playground/features/navigation/navigation_item.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            NavigationItem(icon: Icons.move_to_inbox, isSelected: true),
            NavigationItem(icon: Icons.send),
            NavigationItem(icon: Icons.delete),
            NavigationItem(icon: Icons.info),
          ],
        ),
      ),
    );
  }
}
