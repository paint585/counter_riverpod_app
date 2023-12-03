import 'package:counter_riverpod_app/counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter Page",
        ),
        actions: [
          IconButton(
            onPressed: ref.read(counterNotifier.notifier).increment,
            icon: const Icon(
              Icons.add,
            ),
          ),
          IconButton(
            onPressed: ref.read(counterNotifier.notifier).decrement,
            icon: const Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          "The current counter is ${ref.watch(counterNotifier)}",
        ),
      ),
    );
  }
}
