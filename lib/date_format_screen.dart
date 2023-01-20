import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'providers/date_formats.dart';
import 'ui/format_based_list.dart';
import 'ui/locale_based_list.dart';

class MainScreen extends HookConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 3);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart Date Format Reference'),
        bottom: TabBar(
          isScrollable: true,
          controller: tabController,
          tabs: const [
            Tab(text: 'Build-in constructors'),
            Tab(text: 'Custom examples'),
            Tab(text: 'Custom format'),
          ],
        ),
      ),
      body: Column(
        children: [
          const DatePickerField(),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                DefaultConstructorsList(),
                CustomConstructorsList(),
                FormatBasedList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DatePickerField extends HookConsumerWidget {
  const DatePickerField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Day: ${selectedDate.day}'),
              Text('Month: ${selectedDate.month}'),
              Text('Year: ${selectedDate.year}'),
              const SetDateButton(),
            ],
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hour: ${selectedDate.hour}'),
              Text('Minute: ${selectedDate.minute}'),
              Text('Second: ${selectedDate.second}'),
              const SetTimeButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class SetTimeButton extends ConsumerWidget {
  const SetTimeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);
    return ElevatedButton(
      onPressed: () => showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(selectedDate),
      ).then(
        (value) {
          if (value != null) {
            ref.read(selectedDateProvider.notifier).setTime(value);
          }
        },
      ),
      child: const Text('Change Time'),
    );
  }
}

class SetDateButton extends ConsumerWidget {
  const SetDateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);
    return ElevatedButton(
      onPressed: () => showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(0),
        lastDate: DateTime(9999),
      ).then(
        (value) {
          if (value != null) {
            ref.read(selectedDateProvider.notifier).setDate(value);
          }
        },
      ),
      child: const Text('Change Date'),
    );
  }
}
