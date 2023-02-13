// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$exampleHash() => r'081776126bafed3e1583bba9c1fadef798215ad7';

/// See also [Example].
@ProviderFor(Example)
final exampleProvider = AutoDisposeNotifierProvider<Example, int>.internal(
  Example.new,
  name: r'exampleProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$exampleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Example = AutoDisposeNotifier<int>;
String _$myProviderHash() => r'7ce1437815509b04250617b1c1fb4acb2da7f530';

/// See also [myProvider].
@ProviderFor(myProvider)
final myProviderProvider = AutoDisposeProvider<int>.internal(
  myProvider,
  name: r'myProviderProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$myProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MyProviderRef = AutoDisposeProviderRef<int>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
