part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  final int counter;

  const CounterState({
    required this.counter,
  });

  @override
  List<Object> get props => [counter];
}

final class CounterInitial extends CounterState {
  const CounterInitial({super.counter = 0});
}

class DecrementState extends CounterState {
  const DecrementState({required super.counter});
}

class IncrementState extends CounterState {
  const IncrementState({required super.counter});
}

class RandomState extends CounterState {
  const RandomState({required super.counter});
}

class ZeroState extends CounterState {
  const ZeroState({required super.counter});
}
