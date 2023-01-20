import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/date_format_info.dart';
import '../providers/date_formats.dart';
import '../providers/locales.dart';
import 'locale_picker.dart';

class DefaultConstructorsList extends ConsumerWidget {
  const DefaultConstructorsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => LocaleBasedList(
        formats: ref.watch(defaultDateFormatsProvider),
      );
}

class CustomConstructorsList extends ConsumerWidget {
  const CustomConstructorsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => LocaleBasedList(
        formats: ref.watch(customDateFormatsProvider),
      );
}

class LocaleBasedList extends ConsumerWidget {
  const LocaleBasedList({super.key, required this.formats});

  final List<DateFormatInfo> formats;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
        children: [
          const SelectLocaleButton(),
          Expanded(
            child: ListView.separated(
              itemCount: formats.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final info = formats[index];
                return LocaleBasedTile(formatInfo: info);
              },
            ),
          ),
        ],
      );
}

class LocaleBasedTile extends ConsumerWidget {
  const LocaleBasedTile({
    super.key,
    required this.formatInfo,
  });

  final DateFormatInfo formatInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(selectedLocaleProvider);
    final formattedDate = ref
            .watch(
              formattedDateProvider(
                format: formatInfo.format,
                locale: locale,
              ),
            )
            .valueOrNull ??
        "";
    return ListTile(
      title: Text(formattedDate),
      subtitle: Text(formatInfo.description ?? formatInfo.format),
    );
  }
}

class SelectLocaleButton extends ConsumerWidget {
  const SelectLocaleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => TextButton(
        onPressed: () => LocalePicker.show(context),
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  ref.watch(selectedLocaleProvider),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
            const Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Divider(
                  height: 1,
                )),
          ],
        ),
      );
}
