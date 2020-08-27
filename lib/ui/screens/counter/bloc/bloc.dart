import 'package:bloc_example/ui/screens/counter/bloc/events.dart';
import 'package:bloc_example/ui/screens/counter/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  CounterBloc(CounterStates initialState) : super(InitialCounterState());

  int count = 0;

  /*  @override
  CounterStates get initialState => InitialCounterState();
 */
  static CounterBloc get(BuildContext context) => BlocProvider.of(context);
  @override
  Stream<CounterStates> mapEventToState(CounterEvents event) async* {
    if (event is IncrementCounterValue) {
      yield* _changeValue('in');
    }
    if (event is DecrementCounterValue) {
      yield* _changeValue('de');
    }
  }

  Stream<CounterStates> _changeValue(String s) async* {
    switch (s) {
      case 'in':
        count++;
        break;
      case 'de':
        if (count != 0) count--;
        break;
    }
    yield SuccessCounterState(s);
  }
}
