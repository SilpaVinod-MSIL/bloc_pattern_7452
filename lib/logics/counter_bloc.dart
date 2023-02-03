import 'package:bloc_pattern_7452/logics/counter_event.dart';
import 'package:bloc_pattern_7452/logics/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc():super(CounterIntial()){
    on<CounterEvent>((event,emit){
      //logic inside the bloc are return based on the event that triggered while tapping the UI
      if(event is InitialEvent){
        //emit to output new state & rebuild of the build() fn
        emit(CounterState(counterValue: state.counterValue));
      }
      if(event is IncrementEvent){
        emit(CounterState(counterValue: state.counterValue+1));
      }


    });
  }

}