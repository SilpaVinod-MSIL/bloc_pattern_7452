import 'package:flutter/material.dart';

@immutable
abstract class CounterEvent{}
//events class are created using the functions available in the UI
class InitialEvent extends CounterEvent{

}
class IncrementEvent extends CounterEvent{
  
}
