import 'package:bloc/bloc.dart';
import 'package:counterapp2/config/theme/catshing/catshing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  Themecashebool themecashebool = Themecashebool();
  static ThemeCubit get(BuildContext context) => BlocProvider.of(context);
  load() async {
    bool isdark;
    isdark = await themecashebool.gettheme();

    if (isdark == true) {
      emit(ThemeDark());
    } else {
      emit(Themelight());
    }
  }

  themeis() async {
    bool isdark;
    isdark = await themecashebool.gettheme();
    themecashebool.catchthemedata(isdark);
    print('iam here');
    if (isdark == true) {
      emit(ThemeDark());
    } else {
      emit(Themelight());
    }
  }
}
