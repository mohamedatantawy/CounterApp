import 'package:counterapp2/feature/home/presentation/View/homeView.dart';
import 'package:counterapp2/feature/home/presentation/mange/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CounterApp());
}
class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        
      ],
      child:const MaterialApp(
      home: Homeview(),
      debugShowCheckedModeBanner: false,
    ),
    );
  }
}