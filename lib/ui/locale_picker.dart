import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../locales.dart';

class LocalePicker extends HookConsumerWidget {
  const LocalePicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    useValueListenable(controller);
    final locales = ref.watch(localesProvider(filter: controller.text));
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: 'Enter a locale',
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: locales.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final locale = locales[index];
                return ListTile(
                  title: Text(locale),
                  onTap: () {
                    ref.read(selectedLocaleProvider.notifier).setLocale(locale);
                    Navigator.of(context).pop();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  static Future<void> show(BuildContext context) async =>
      await showModalBottomSheet(
        context: context,
        builder: (context) => const LocalePicker(),
      );
}
