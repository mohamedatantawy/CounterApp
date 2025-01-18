
import 'package:counterapp2/core/constant/constant.dart';
import 'package:counterapp2/core/util/styles.dart';
import 'package:flutter/material.dart';

class CustomElevaterbutton extends StatelessWidget {
  const CustomElevaterbutton({super.key, required this.name, this.onpressed});
  final String name;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onpressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Colors.black,
            style: BorderStyle.solid,
          ),
        ),
        backgroundColor: kpirameycolor,
      ),
      child: Text(
        name,
        style: Styles.font18,
      ),
    );
  }
}
