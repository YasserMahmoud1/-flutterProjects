import 'package:app/counter_states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  
  int counter = 0;

  CounterCubit(super.initialState);
  static CounterCubit get(context) => BlocProvider.of(context);

  void minus() {
    counter--;
    emit(CounterMinusState());
  }
  
  void plus() {
    counter++;
    emit(CounterPlusState());
  }
}
