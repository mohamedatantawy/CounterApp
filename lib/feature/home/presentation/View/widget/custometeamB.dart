import 'package:counterapp2/core/util/styles.dart';
import 'package:counterapp2/core/widget/Elevaterbutton.dart';
import 'package:counterapp2/feature/home/presentation/mange/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Customcolumnteamb extends StatefulWidget {
  const Customcolumnteamb({super.key, required this.number});
  final int number;
  @override
  State<Customcolumnteamb> createState() => _CustomcolumnteambState();
}

class _CustomcolumnteambState extends State<Customcolumnteamb> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Center(child: Text('Team B', style: Styles.font30)),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            //'${BlocProvider.of<CounterCubit>(context).counterB}',
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
                .increamentA(number: 1, type: 'B');
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
                .increamentA(number: 2, type: 'B');
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
                .increamentA(number: 3, type: 'B');
            setState(() {});
          },
        ),
      ],
    );
  }
}
