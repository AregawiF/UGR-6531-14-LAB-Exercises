import 'package:flutter_bloc/flutter_bloc.dart';
part './counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<CounterIncrement>(
        (event, emit) => emit(CounterState(count: state.count + 1)));
    on<CounterDecrement>(
        (event, emit) => emit(CounterState(count: state.count - 1)));
  }
}
