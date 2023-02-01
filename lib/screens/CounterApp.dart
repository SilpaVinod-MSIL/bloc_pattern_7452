import 'package:bloc_pattern_7452/logics/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'countertext.dart';

class CounterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CounterBloc(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Bloc Pattern"),),
          body: CounterText()
          
        ),
      ),
    );
  }
  
}