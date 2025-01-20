import 'package:counterapp2/config/theme/catshing/catshing.dart';
import 'package:counterapp2/config/theme/cubit/theme_cubit.dart';
import 'package:counterapp2/core/constant/constant.dart';
import 'package:counterapp2/core/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class customdarktheme extends StatefulWidget {
  const customdarktheme({
    super.key, required this.themed,
  });
  final bool themed;
  @override
  State<customdarktheme> createState() => _customdarkthemeState();
}

class _customdarkthemeState extends State<customdarktheme> {
  bool isactive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color:isactive?Colors.blue[800]: kpirameycolor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Dark Theme',
            style: Styles.font18,
          ),
          Switch(
            value: isactive,
            onChanged: (value) {
              setState(() {
                isactive = value;
                
                Themecashebool().catchthemedata(isactive);
                BlocProvider.of<ThemeCubit>(context).themeis();
              });
            },
          )
        ],
      ),
    );
  }
}
