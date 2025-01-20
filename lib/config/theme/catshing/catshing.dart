import 'package:shared_preferences/shared_preferences.dart';

class Themecashebool {
  catchthemedata(bool isactivebotten) async {
    bool value = isactivebotten;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('theme', value);
    print(value);
  }

 Future<bool> gettheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = prefs.getBool('theme');
    if (result != null) {
      print('is not null');
      return result;
    } else {
      print('is  null');
      return false;
    }
  }
}
