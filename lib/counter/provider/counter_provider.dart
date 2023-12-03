import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A counter provider that instantiates as [int] 1.
/// This is read-only provider. It cannot increment or decrement.
/// This is also an auto-dispose provider,
/// It will dispose automatically when there are no related providers
/// that are listening to this provider.
final counterProvider = Provider.autoDispose<int>((ref) => 2);

/// A counter notifier that instantiate the initial value base on [build] method in [Counter] class.
/// This will allow you to either increment or decrement the value.
final counterNotifier = NotifierProvider.autoDispose<Counter, int>(
  Counter.new,
);

/// This is a counter notifier class, which is an upgreaded-version of [counterProvider].
/// This will allow to increment or decrement itself by user interaction.
class Counter extends AutoDisposeNotifier<int> {
  // Set initial to be zero.
  @override
  build() => 0;

  void increment() => state++;

  void decrement() => state--;
}
