import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'models/date_format_info.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
class SelectedDate extends _$SelectedDate {
  @override
  DateTime build() => DateTime.now();

  void setDate(DateTime date) {
    state = DateTime(
      date.year,
      date.month,
      date.day,
      state.hour,
      state.minute,
    );
  }

  void setTime(TimeOfDay time) {
    state = DateTime(
      state.year,
      state.month,
      state.day,
      time.hour,
      time.minute,
    );
  }
}

@riverpod
class FormattedDate extends _$FormattedDate {
  @override
  Future<String> build({
    required String format,
    required String locale,
  }) async {
    await initializeDateFormatting(locale);

    final date = ref.watch(selectedDateProvider);
    final formatter = DateFormat(format, locale);
    return formatter.format(date);
  }
}

@Riverpod(keepAlive: true)
List<DateFormatInfo> defaultDateFormats(_) => const [
      DateFormatInfo(format: 'd'),
      DateFormatInfo(format: 'E'),
      DateFormatInfo(format: 'EEEE'),
      DateFormatInfo(format: 'LLL'),
      DateFormatInfo(format: 'LLLL'),
      DateFormatInfo(format: 'M'),
      DateFormatInfo(format: 'Md'),
      DateFormatInfo(format: 'MEd'),
      DateFormatInfo(format: 'MMM'),
      DateFormatInfo(format: 'MMMd'),
      DateFormatInfo(format: 'MMMEd'),
      DateFormatInfo(format: 'MMMM'),
      DateFormatInfo(format: 'MMMMd'),
      DateFormatInfo(format: 'MMMMEEEEd'),
      DateFormatInfo(format: 'QQQ'),
      DateFormatInfo(format: 'QQQQ'),
      DateFormatInfo(format: 'y'),
      DateFormatInfo(format: 'yM'),
      DateFormatInfo(format: 'yMd'),
      DateFormatInfo(format: 'yMEd'),
      DateFormatInfo(format: 'yMMM'),
      DateFormatInfo(format: 'yMMMd'),
      DateFormatInfo(format: 'yMMMEd'),
      DateFormatInfo(format: 'yMMMM'),
      DateFormatInfo(format: 'yMMMMd'),
      DateFormatInfo(format: 'yMMMMEEEEd'),
      DateFormatInfo(format: 'yQQQ'),
      DateFormatInfo(format: 'yQQQQ'),
      DateFormatInfo(format: 'H'),
      DateFormatInfo(format: 'Hm'),
      DateFormatInfo(format: 'Hms'),
      DateFormatInfo(format: 'j'),
      DateFormatInfo(format: 'jm'),
      DateFormatInfo(format: 'jms'),
    ];

@Riverpod(keepAlive: true)
List<DateFormatInfo> customDateFormats(_) => const [
      DateFormatInfo(format: 'EEEE, MMM d, yyyy'),
      DateFormatInfo(format: 'MM/dd/yyyy'),
      DateFormatInfo(format: 'MM-dd-yyyy HH:mm'),
      DateFormatInfo(format: 'MMM d, h:mm a'),
      DateFormatInfo(format: 'MMMM yyyy'),
      DateFormatInfo(format: 'MMM d, yyyy'),
      DateFormatInfo(format: 'E, d MMM yyyy HH:mm:ss'),
      DateFormatInfo(format: 'yyyy-MM-dd\'T\'HH:mm:ss'),
      DateFormatInfo(format: 'dd.MM.yy'),
      DateFormatInfo(format: 'HH:mm:ss.SSS'),
    ];
