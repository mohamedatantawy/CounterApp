import 'package:counterapp2/core/constant/constant.dart';
import 'package:flutter/material.dart';

class Settingbody extends StatelessWidget {
  const Settingbody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.all(12),
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: kpirameycolor,
          ),
          child:Text('git') ,
        )
      ],
    );
  }
}
