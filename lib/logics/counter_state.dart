class CounterState{
  int counterValue;
  CounterState({
    required this.counterValue
});
}
class CounterIntial extends CounterState{
  CounterIntial():super(counterValue: 0);

}

class CounterSuccess extends CounterState{
  CounterSuccess():super(counterValue: 1);
}