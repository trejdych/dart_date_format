// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locales.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$SelectedLocaleHash() => r'4d50971dd733539440fc7bd340f0b66516ec23b7';

/// See also [SelectedLocale].
final selectedLocaleProvider = NotifierProvider<SelectedLocale, String>(
  SelectedLocale.new,
  name: r'selectedLocaleProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$SelectedLocaleHash,
);
typedef SelectedLocaleRef = NotifierProviderRef<String>;

abstract class _$SelectedLocale extends Notifier<String> {
  @override
  String build();
}

String _$localesHash() => r'0f5c2cbd6263b9496c57b0dbade48a4dea6d3332';

/// See also [locales].
class LocalesProvider extends AutoDisposeProvider<List<String>> {
  LocalesProvider({
    this.filter,
  }) : super(
          (ref) => locales(
            ref,
            filter: filter,
          ),
          from: localesProvider,
          name: r'localesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$localesHash,
        );

  final String? filter;

  @override
  bool operator ==(Object other) {
    return other is LocalesProvider && other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef LocalesRef = AutoDisposeProviderRef<List<String>>;

/// See also [locales].
final localesProvider = LocalesFamily();

class LocalesFamily extends Family<List<String>> {
  LocalesFamily();

  LocalesProvider call({
    String? filter,
  }) {
    return LocalesProvider(
      filter: filter,
    );
  }

  @override
  AutoDisposeProvider<List<String>> getProviderOverride(
    covariant LocalesProvider provider,
  ) {
    return call(
      filter: provider.filter,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'localesProvider';
}
