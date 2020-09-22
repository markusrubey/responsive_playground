import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final bool isSelected;

  const NavigationItem({
    @required this.icon,
    this.name = 'Nav item',
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
    );
  }

  Widget get leading {
    if (isSelected) {
      return Icon(icon, color: Colors.black,);
    } else {
      return Icon(icon);
    }
  }

  Widget get title {
    if (isSelected) {
      return Text('Selected $name');
    } else {
      return Text(name);
    }
  }
}
