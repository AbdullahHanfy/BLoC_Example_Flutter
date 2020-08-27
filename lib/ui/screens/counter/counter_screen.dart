import 'package:bloc_example/ui/screens/counter/bloc/events.dart';
import 'package:flutter/material.dart';
import 'bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/states.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(InitialCounterState()),
      child: BlocConsumer<CounterBloc, CounterStates>(
          builder: (BuildContext context, CounterStates state) {
        int count = CounterBloc.get(context).count;
        return Scaffold(
          appBar: AppBar(
            title: Text('CounterScreen'),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    CounterBloc.get(context).add(IncrementCounterValue());
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  count.toString(),
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  onPressed: () {
                    CounterBloc.get(context).add(DecrementCounterValue());
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ),
        );
      }, listener: (BuildContext context, CounterStates state) {
        if (state is SuccessCounterState) {
          print('success counter bloc : ${state.type}');
        }
      }),
    );
  }
}

/*

*/
