import 'package:wo_wonder/presentation/view_models/bottom_nav_view_model.dart';

import '../presentation/view_models/auth_view_model.dart';
import '../presentation/view_models/chat_view_model.dart';
import 'index.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(394.0, 852.0),
      minTextAdapt: true,
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (ctx) => AuthViewModel()),
          ChangeNotifierProvider(create: (ctx) => BottomNavViewModel()),
          ChangeNotifierProvider(create: (ctx) => ChatViewModel()),
        ],
        child: const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Crime Reporting App',
          // theme: getAppTheme(context),
          // home: const MyHomePage(title: 'Flutter Demo Home Page'),
          initialRoute: Routes.splashRoute,
          onGenerateRoute: RoutesGenerator.getRoute,
        ),
      ),
    );
  }
}
