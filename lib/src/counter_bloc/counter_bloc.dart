import 'package:counter_bloc/src/counter_bloc/counter_bloc_event.dart';
import 'package:counter_bloc/src/counter_bloc/counter_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBloc() : super(CounterBlocInicial()) {
    on<CounterBlocAdd>(_add);
    on<CounterBlocRemove>(_remove);
  }

  int counter = 0;

  void _add(CounterBlocAdd event, Emitter emitter) async {
    counter++;
    emitter(CounterBlocLoading());
    await Future.delayed(const Duration(seconds: 1));

    emitter(CounterBlocSuccess(counter: counter));
  }

  void _remove(CounterBlocRemove event, Emitter emitter) async {
    counter--;

    emitter(CounterBlocLoading());
    await Future.delayed(const Duration(seconds: 1));

    emitter(CounterBlocSuccess(counter: counter));
  }
}
