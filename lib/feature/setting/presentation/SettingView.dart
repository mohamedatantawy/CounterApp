import 'package:counterapp2/config/theme/cubit/theme_cubit.dart';
import 'package:counterapp2/core/constant/constant.dart';
import 'package:counterapp2/core/util/styles.dart';
import 'package:counterapp2/feature/setting/presentation/View/widget/settingbody.dart';
import 'package:flutter/material.dart';

class Settingview extends StatefulWidget {
  const Settingview({super.key, required this.themed});
  final bool themed;

  @override
  State<Settingview> createState() => _SettingviewState();
}

class _SettingviewState extends State<Settingview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:widget.themed ? Colors.blue[900] : Colors.white,
      
      appBar: AppBar(
        backgroundColor: kpirameycolor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Setting',
          style: Styles.font30,
        ),
      ),
      body: Settingbody(
        themed: widget.themed,
      ),
    );
  }
}
