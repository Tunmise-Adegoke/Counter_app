import 'package:bloc/bloc.dart';

import 'package:increment_app/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counter: 0, wasIncremented: false));

  void increment() => emit(CounterState(counter: state.counter +1, wasIncremented: true, ));

  void decrement() => emit(CounterState(counter: state.counter -1, wasIncremented: false));
}
