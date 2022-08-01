import 'package:app/counter_states.dart';
import 'package:app/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(CounterInitialState()),
      child: BlocConsumer<CounterCubit,CounterStates>(
        builder: (context, state) => Scaffold(
                appBar: AppBar(
                  title: const Text('Counter'),
                ),
                body: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          CounterCubit.get(context).minus();
                        },
                        child: const Text(
                          'MINUS',
                        ),
                      ),
                      Text(
                        '${CounterCubit.get(context).counter}',
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          CounterCubit.get(context).plus();
                        },
                        child: const Text(
                          'PLUS',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        
        
        
        
        
        
        
        
        listener: (context, state) {}
      )
    );
  }
}
