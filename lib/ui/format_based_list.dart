import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../locales.dart';
import '../providers.dart';

class FormatBasedList extends HookConsumerWidget {
  const FormatBasedList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController(text: 'yyyy-MM-dd HH:mm:ss');
    useValueListenable(controller);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: controller,
            autocorrect: false,
            decoration: const InputDecoration(
              hintText: 'Enter a format',
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: locales.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) {
              final locale = locales[index];
              return FormatBasedTile(
                format: controller.text,
                locale: locale,
              );
            },
          ),
        ),
      ],
    );
  }
}

class FormatBasedTile extends ConsumerWidget {
  const FormatBasedTile(
      {super.key, required this.format, required this.locale});

  final String format;
  final String locale;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formattedDate = ref
            .watch(
              formattedDateProvider(
                format: format,
                locale: locale,
              ),
            )
            .valueOrNull ??
        "";

    return ListTile(
      title: Text(formattedDate),
      subtitle: Text('Locale: $locale'),
    );
  }
}
