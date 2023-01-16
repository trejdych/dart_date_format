// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_format_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DateFormatInfo {
  String? get description => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DateFormatInfoCopyWith<DateFormatInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateFormatInfoCopyWith<$Res> {
  factory $DateFormatInfoCopyWith(
          DateFormatInfo value, $Res Function(DateFormatInfo) then) =
      _$DateFormatInfoCopyWithImpl<$Res, DateFormatInfo>;
  @useResult
  $Res call({String? description, String format});
}

/// @nodoc
class _$DateFormatInfoCopyWithImpl<$Res, $Val extends DateFormatInfo>
    implements $DateFormatInfoCopyWith<$Res> {
  _$DateFormatInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? format = null,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateFormatInfoCopyWith<$Res>
    implements $DateFormatInfoCopyWith<$Res> {
  factory _$$_DateFormatInfoCopyWith(
          _$_DateFormatInfo value, $Res Function(_$_DateFormatInfo) then) =
      __$$_DateFormatInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, String format});
}

/// @nodoc
class __$$_DateFormatInfoCopyWithImpl<$Res>
    extends _$DateFormatInfoCopyWithImpl<$Res, _$_DateFormatInfo>
    implements _$$_DateFormatInfoCopyWith<$Res> {
  __$$_DateFormatInfoCopyWithImpl(
      _$_DateFormatInfo _value, $Res Function(_$_DateFormatInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? format = null,
  }) {
    return _then(_$_DateFormatInfo(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DateFormatInfo implements _DateFormatInfo {
  const _$_DateFormatInfo({this.description, required this.format});

  @override
  final String? description;
  @override
  final String format;

  @override
  String toString() {
    return 'DateFormatInfo(description: $description, format: $format)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateFormatInfo &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.format, format) || other.format == format));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, format);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateFormatInfoCopyWith<_$_DateFormatInfo> get copyWith =>
      __$$_DateFormatInfoCopyWithImpl<_$_DateFormatInfo>(this, _$identity);
}

abstract class _DateFormatInfo implements DateFormatInfo {
  const factory _DateFormatInfo(
      {final String? description,
      required final String format}) = _$_DateFormatInfo;

  @override
  String? get description;
  @override
  String get format;
  @override
  @JsonKey(ignore: true)
  _$$_DateFormatInfoCopyWith<_$_DateFormatInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
