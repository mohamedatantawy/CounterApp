import 'package:counterapp2/core/util/styles.dart';
import 'package:counterapp2/core/widget/Elevaterbutton.dart';
import 'package:counterapp2/feature/setting/presentation/SettingView.dart';
import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue[100],
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
                    return const Settingview();
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
