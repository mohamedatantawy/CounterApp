import 'package:counterapp2/core/constant/constant.dart';
import 'package:counterapp2/core/util/styles.dart';
import 'package:counterapp2/feature/setting/presentation/View/widget/settingbody.dart';
import 'package:flutter/material.dart';

class Settingview extends StatelessWidget {
  const Settingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kpirameycolor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Setting',
          style: Styles.font30,
        ),
      ),
      body:const Settingbody(),
    );
  }
}
