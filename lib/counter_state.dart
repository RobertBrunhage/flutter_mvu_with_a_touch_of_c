import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class CounterState extends Equatable {
  final int count;

  const CounterState({@required this.count});

  const CounterState.initial() : count = 0;

  @override
  List<Object> get props => [count];

  @override
  bool get stringify => true;

  CounterState copyWith({
    int count,
  }) {
    return CounterState(
      count: count ?? this.count,
    );
  }
}
