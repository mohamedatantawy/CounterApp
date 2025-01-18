import 'package:counterapp2/core/util/styles.dart';
import 'package:counterapp2/core/widget/Elevaterbutton.dart';
import 'package:counterapp2/feature/home/presentation/mange/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Customcolumnteama extends StatefulWidget {
  const Customcolumnteama({super.key, required this.number});
  final int number;
  @override
  State<Customcolumnteama> createState() => _CustomcolumnteamaState();
}

class _CustomcolumnteamaState extends State<Customcolumnteama> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Center(child: Text('Team A', style: Styles.font30)),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            // '${BlocProvider.of<CounterCubit>(context).counterA}',
            widget.number.toString(),
            style: Styles.font100,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevaterbutton(
          name: 'ADD 1 point',
          onpressed: () {
            BlocProvider.of<CounterCubit>(context)
                .increamentA(number: 1, type: 'A');
            setState(() {});
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevaterbutton(
          name: 'ADD 2 point',
          onpressed: () {
            BlocProvider.of<CounterCubit>(context)
                .increamentA(number: 2, type: 'A');
            setState(() {});
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevaterbutton(
          name: 'ADD 3 point',
          onpressed: () {
            BlocProvider.of<CounterCubit>(context)
                .increamentA(number: 3, type: 'A');
            setState(() {});
          },
        ),
      ],
    );
  }
}
