import 'package:counterapp2/core/constant/constant.dart';
import 'package:counterapp2/feature/home/presentation/View/drawer.dart';
import 'package:counterapp2/feature/home/presentation/View/widget/homeviewbody.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});
// final GlobalKey<ScaffoldState> scafflodkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      drawer: const Drawers(),
      // backgroundColor: Colors.orange,
      appBar: AppBar(
        
        backgroundColor: kpirameycolor,
        title: const Center(
          child: Text(
            'CounterApp',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: const Homeviewbody(),
    );
  }
}
