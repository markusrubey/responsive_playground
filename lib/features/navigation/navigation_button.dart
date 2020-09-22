import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerScaffoldKey;

  const NavigationButton(
    this.drawerScaffoldKey, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.dehaze),
      onPressed: () {
        // TODO: Hide SearchButton
        if (drawerScaffoldKey.currentState.isDrawerOpen == false) {
          drawerScaffoldKey.currentState.openDrawer();
        } else {
          Navigator.pop(context);
        }
      },
    );
  }
}
