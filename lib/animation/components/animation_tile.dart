import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final indexProvider = Provider<int>(
  (ref) => throw UnimplementedError(),
);

class AnimationTile extends ConsumerWidget {
  const AnimationTile({
    required this.title,
    required this.child,
    super.key,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      color: Colors.amber[50],
      padding: const EdgeInsets.all(16),
      alignment: Alignment.bottomRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textTheme.headlineMedium!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          child,
        ],
      ),
    );
  }
}
