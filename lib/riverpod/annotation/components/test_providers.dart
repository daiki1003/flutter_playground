import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_providers.g.dart';

@riverpod
int myProvider(MyProviderRef ref) => 0;

@riverpod
class Example extends _$Example {
  @override
  int build() => 0;
}
