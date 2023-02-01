import 'package:bloc_pattern_7452/logics/counter_bloc.dart';
import 'package:bloc_pattern_7452/logics/counter_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logics/counter_event.dart';

class CounterText extends StatelessWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc,CounterState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Count of Pushed",style: TextStyle(fontSize: 20,color: Colors.purple),),
              ),
              Text(state.counterValue.toString(),style: TextStyle(fontSize: 15,color: Colors.red),),
              //add event to bloc while tapping
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(onPressed: () {
                  context.read<CounterBloc>().add(IncrementEvent());
                },
                  child: Icon(Icons.add),),
              )
            ],
          ),
        );
      }
    );
  }
}



