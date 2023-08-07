import 'package:flutter/services.dart';

import 'app/app.dart';
import 'app/index.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorManager.primary, // Specify the desired color
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness:
          Brightness.dark // Specify the desired brightness (light or dark)
      ));
  runApp(const MyApp());
}
