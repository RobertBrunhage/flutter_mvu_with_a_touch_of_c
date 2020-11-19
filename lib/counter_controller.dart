import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'counter_state.dart';

final counterControllerProvider = StateNotifierProvider<CounterController>((ref) {
  return CounterController();
});

class CounterController extends StateNotifier<CounterState> {
  CounterController([CounterState state]) : super(state ?? CounterState.initial());

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}
