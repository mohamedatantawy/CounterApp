import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int counterA = 0;
  int counterB = 0;
  increamentA({required int number, required String type}) {
    if (type == 'A') {
      counterA += number;
      emit(IncreamnetA());
    } else {
      counterB += number;
      emit(IncreamnetB());
    }
  }

  reset() {
    counterA = counterB = 0;
    emit(Resert());
  }
}
