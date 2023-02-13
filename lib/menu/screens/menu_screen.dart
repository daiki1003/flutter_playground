import 'package:flutter/material.dart';

import 'package:flutter_playground/animation/screen/animation_screen.dart';
import 'package:flutter_playground/menu/components/menu_item.dart';
import 'package:flutter_playground/menu/enum/menu_type.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu List')),
      body: ListView.separated(
        itemCount: MenuType.values.length,
        itemBuilder: (context, index) {
          final type = MenuType.values[index];
          return MenuItem(
            type,
            onPressed: (type) {
              switch (type) {
                case MenuType.animation:
                  Navigator.of(context).push<void>(AnimationScreen.route());
                  break;
              }
            },
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }
}
