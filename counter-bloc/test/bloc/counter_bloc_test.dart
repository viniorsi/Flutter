import 'package:bloc_test/bloc_test.dart';
import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterBloc bloc;

  setUp(() {
    bloc = CounterBloc();
  });

  tearDown(() {
    bloc.close();
  });

  group('CounterBloc', () {
    blocTest<CounterBloc, CounterState>(
      'Should emits [IncrementState(1)] when called event IncrementCounter()',
      build: () {
        return bloc;
      },
      act: (bloc) => bloc.add(const IncrementEvent()),
      expect: () => [
        const IncrementState(counter: 1),
      ],
    );

    blocTest<CounterBloc, CounterState>(
      'Should emits [DecrementState(any())] when called event DecrementCounter()',
      build: () => bloc,
      act: (bloc) => bloc.add(const DecrementEvent()),
      expect: () => [
        const DecrementState(counter: -1),
      ],
    );

    blocTest<CounterBloc, CounterState>(
      'Should emits [RandomState(31)] when called event RandomEvent()',
      build: () => bloc,
      act: (bloc) {
        bloc.add(const RandomEvent());
      },
      expect: () => [
        RandomState(counter: bloc.state.counter),
      ],
    );

    blocTest<CounterBloc, CounterState>(
      'Should emits [ZeroState(0)] when called event ZeroEvent()',
      build: () => bloc,
      act: (bloc) => bloc.add(const ZeroEvent()),
      expect: () => [
        const ZeroState(counter: 0),
      ],
    );
  });
}
