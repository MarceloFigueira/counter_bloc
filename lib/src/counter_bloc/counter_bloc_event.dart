abstract class CounterBlocEvent {
  CounterBlocEvent();
}

class CounterBlocAdd implements CounterBlocEvent {}

class CounterBlocRemove implements CounterBlocEvent {}
