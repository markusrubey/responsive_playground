import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerScaffoldKey;

  const FilterButton(
    this.drawerScaffoldKey, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.tune),
      onPressed: () {
        // TODO: Hide SearchButton
        if (drawerScaffoldKey.currentState.isEndDrawerOpen == false) {
          drawerScaffoldKey.currentState.openEndDrawer();
        } else {
          Navigator.pop(context);
        }
      },
    );
  }
}
