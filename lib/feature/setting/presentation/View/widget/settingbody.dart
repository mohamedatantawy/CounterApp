import 'package:counterapp2/core/constant/constant.dart';
import 'package:counterapp2/core/util/styles.dart';
import 'package:counterapp2/feature/setting/presentation/View/widget/customdarktheme.dart';
import 'package:flutter/material.dart';

class Settingbody extends StatelessWidget {
  const Settingbody({super.key, required this.themed});
  // final bool isactive;
  final bool themed;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
       const SizedBox(
          height: 40,
        ),
        customdarktheme(
          themed: themed,
        )
      ],
    );
  }
}
