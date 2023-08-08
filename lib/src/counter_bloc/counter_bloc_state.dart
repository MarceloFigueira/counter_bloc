abstract class CounterBlocState {
  CounterBlocState();
}

class CounterBlocInicial implements CounterBlocState {}

class CounterBlocLoading implements CounterBlocState {}

class CounterBlocSuccess implements CounterBlocState {
  final int counter;
  CounterBlocSuccess({required this.counter});
}

class CounterBlocFailure implements CounterBlocState {}
