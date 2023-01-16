// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

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

String _$SelectedDateHash() => r'26a98d6e098ae575900d707ba95fb3711b16e814';

/// See also [SelectedDate].
final selectedDateProvider = NotifierProvider<SelectedDate, DateTime>(
  SelectedDate.new,
  name: r'selectedDateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$SelectedDateHash,
);
typedef SelectedDateRef = NotifierProviderRef<DateTime>;

abstract class _$SelectedDate extends Notifier<DateTime> {
  @override
  DateTime build();
}

String _$SelectedLocaleHash() => r'ffdcc0d4a35658f3dc694ed75be75bae0af8f303';

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

String _$FormattedDateHash() => r'5b3cfb7add586e55c5a6fd182545341a84448610';

/// See also [FormattedDate].
class FormattedDateProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FormattedDate, String> {
  FormattedDateProvider({
    required this.format,
    required this.locale,
  }) : super(
          () => FormattedDate()
            ..format = format
            ..locale = locale,
          from: formattedDateProvider,
          name: r'formattedDateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$FormattedDateHash,
        );

  final String format;
  final String locale;

  @override
  bool operator ==(Object other) {
    return other is FormattedDateProvider &&
        other.format == format &&
        other.locale == locale;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, format.hashCode);
    hash = _SystemHash.combine(hash, locale.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<String> runNotifierBuild(
    covariant _$FormattedDate notifier,
  ) {
    return notifier.build(
      format: format,
      locale: locale,
    );
  }
}

typedef FormattedDateRef = AutoDisposeAsyncNotifierProviderRef<String>;

/// See also [FormattedDate].
final formattedDateProvider = FormattedDateFamily();

class FormattedDateFamily extends Family<AsyncValue<String>> {
  FormattedDateFamily();

  FormattedDateProvider call({
    required String format,
    required String locale,
  }) {
    return FormattedDateProvider(
      format: format,
      locale: locale,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<FormattedDate, String>
      getProviderOverride(
    covariant FormattedDateProvider provider,
  ) {
    return call(
      format: provider.format,
      locale: provider.locale,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'formattedDateProvider';
}

abstract class _$FormattedDate
    extends BuildlessAutoDisposeAsyncNotifier<String> {
  late final String format;
  late final String locale;

  FutureOr<String> build({
    required String format,
    required String locale,
  });
}

String _$defaultDateFormatsHash() =>
    r'97d9f5f918803c446f50defe21b3b4076ec9e2d6';

/// See also [defaultDateFormats].
final defaultDateFormatsProvider = Provider<List<DateFormatInfo>>(
  defaultDateFormats,
  name: r'defaultDateFormatsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$defaultDateFormatsHash,
);
typedef DefaultDateFormatsRef = ProviderRef<List<DateFormatInfo>>;
String _$customDateFormatsHash() => r'697c4e93b99fef992b72329429cd169d6ef6b1f4';

/// See also [customDateFormats].
final customDateFormatsProvider = Provider<List<DateFormatInfo>>(
  customDateFormats,
  name: r'customDateFormatsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customDateFormatsHash,
);
typedef CustomDateFormatsRef = ProviderRef<List<DateFormatInfo>>;
