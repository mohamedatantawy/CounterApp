
import 'package:counterapp2/core/widget/Elevaterbutton.dart';
import 'package:counterapp2/feature/home/presentation/View/widget/customcolumnteamA.dart';
import 'package:counterapp2/feature/home/presentation/View/widget/custometeamB.dart';
import 'package:counterapp2/feature/home/presentation/mange/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homeviewbody extends StatefulWidget {
  const Homeviewbody({super.key});

  @override
  State<Homeviewbody> createState() => _HomeviewbodyState();
}

class _HomeviewbodyState extends State<Homeviewbody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Customcolumnteama(
                  number: BlocProvider.of<CounterCubit>(context).counterA,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const VerticalDivider(
                    thickness: 3,
                    width: 5,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Customcolumnteamb(
                  number: BlocProvider.of<CounterCubit>(context).counterB,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            CustomElevaterbutton(
              name: 'Reset',
              onpressed: () {
                BlocProvider.of<CounterCubit>(context).reset();

                setState(() {});
              },
            ),
          ],
        );
      },
    );
  }
}
