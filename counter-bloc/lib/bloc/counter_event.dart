part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

final class DecrementEvent extends CounterEvent {
  const DecrementEvent();
}

class IncrementEvent extends CounterEvent {
  const IncrementEvent();
}

final class RandomEvent extends CounterEvent {
  const RandomEvent();
}

final class ZeroEvent extends CounterEvent {
  const ZeroEvent();
}
