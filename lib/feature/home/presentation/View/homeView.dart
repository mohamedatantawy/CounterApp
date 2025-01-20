import 'package:counterapp2/config/theme/cubit/theme_cubit.dart';
import 'package:counterapp2/core/constant/constant.dart';
import 'package:counterapp2/feature/home/presentation/View/drawer.dart';
import 'package:counterapp2/feature/home/presentation/View/widget/homeviewbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key, required this.themeData});
// final GlobalKey<ScaffoldState> scafflodkey = GlobalKey();
  final bool themeData;


  @override
  Widget build(BuildContext context) {
    // var themed= BlocProvider.of<ThemeCubit>(context).themecashebool.gettheme();
    return Scaffold(
      drawer:  Drawers(
        themed: themeData,
      ),
      backgroundColor: themeData ? Colors.blue[800] : Colors.white,
      appBar: AppBar(
        backgroundColor: themeData ? Colors.blue : kpirameycolor,
        title: const Center(
          child: Text(
            'CounterApp',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Homeviewbody(
        themed: themeData,
      ),
    );
  }
}
