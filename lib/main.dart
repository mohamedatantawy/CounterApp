import 'package:counterapp2/config/theme/cubit/theme_cubit.dart';
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
        BlocProvider(
          create: (context) => ThemeCubit()..load(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
        if (state is ThemeDark) {
          
          return MaterialApp(
            theme: ThemeData.dark(),
            home:const  Homeview(
              themeData:true,
            ),
            debugShowCheckedModeBanner: false,
          );
        } else if (state is Themelight) {
          return MaterialApp(
            theme: ThemeData.light(),
            home: const Homeview(
               themeData:false,
            ),
            debugShowCheckedModeBanner: false,
          );
        } else {
          return Container();
        }
      }),
    );
  }
}
