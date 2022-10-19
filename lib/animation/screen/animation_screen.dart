import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';

import 'package:flutter_playground/animation/components/animated_align_area.dart';
import 'package:flutter_playground/animation/components/animation_tile.dart';
import 'package:flutter_playground/animation/components/animation_type.dart';

class AnimationScreen extends HookWidget {
  const AnimationScreen({
    super.key,
  });

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const AnimationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final indexState = useState(0);

    return Scaffold(
      appBar: AppBar(),
      body: ProviderScope(
        overrides: [
          indexProvider.overrideWithValue(indexState.value),
        ],
        child: ListView(
          children: [
            ...AnimationType.values
                .map<Widget>(
                  (type) => AnimationTile(
                    title: type.displayString,
                    child: () {
                      switch (type) {
                        case AnimationType.animatedAlign:
                          return const AnimatedAlignArea();
                      }
                    }(),
                  ),
                )
                .intersperse(const SizedBox(height: 32)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          indexState.value = indexState.value + 1;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
