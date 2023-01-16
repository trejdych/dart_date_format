import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_format_info.freezed.dart';

@freezed
class DateFormatInfo with _$DateFormatInfo {
  const factory DateFormatInfo({
    String? description,
    required String format,
  }) = _DateFormatInfo;
}
