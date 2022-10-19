import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_playground/animation/components/animation_tile.dart';

class AnimatedAlignArea extends ConsumerWidget {
  const AnimatedAlignArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexProvider);

    const aligns = [
      Alignment.topLeft,
      Alignment.topRight,
      Alignment.bottomRight,
      Alignment.bottomLeft,
    ];

    return SizedBox(
      height: 200,
      child: AnimatedAlign(
        alignment: aligns[index % aligns.length],
        duration: const Duration(milliseconds: 300),
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
