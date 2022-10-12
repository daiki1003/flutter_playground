import 'package:flutter/material.dart';

import 'package:flutter_playground/menu/components/menu_type_ex.dart';
import 'package:flutter_playground/menu/enum/menu_type.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
    this.type, {
    super.key,
    required this.onPressed,
  });

  final ValueChanged<MenuType> onPressed;

  final MenuType type;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onPressed(type),
      title: Text(type.title),
    );
  }
}
