import 'package:counterapp2/config/theme/cubit/theme_cubit.dart';
import 'package:counterapp2/core/util/styles.dart';
import 'package:counterapp2/core/widget/Elevaterbutton.dart';
import 'package:counterapp2/feature/setting/presentation/SettingView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key, required this.themed});
  final bool themed;
  @override
  Widget build(BuildContext context) {
   // var theme = BlocProvider.of<ThemeCubit>(context).themeis();
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color:themed?Colors.blue[800]: Colors.blue[100],
                borderRadius: BorderRadius.circular(12)),
            child: const Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'asset/image/beach3.jpg',
                  ),
                  radius: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Mohamed Tantawy',
                  style: Styles.font18,
                )
              ],
            ),
          ),
          CustomElevaterbutton(
            name: "Setting",
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  Settingview(
                      themed: themed,
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
