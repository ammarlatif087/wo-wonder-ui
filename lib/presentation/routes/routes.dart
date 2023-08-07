import 'package:wo_wonder/presentation/views/bottom_nav/bottom_nav.dart';
import 'package:wo_wonder/presentation/views/login/login_view.dart';
import 'package:wo_wonder/presentation/views/people_nearby/people_nearby_view.dart';
import 'package:wo_wonder/presentation/views/profile_view/profile_view.dart';
import 'package:wo_wonder/presentation/views/signup/signup_view.dart';

import '../../app/index.dart';
import '../views/splash_view.dart';

class Routes {
  static const String mainRoute = '/mainRoute';
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String signUpRoute = '/signUp';
  static const String nearbyRoute = '/nearby';
  static const String profileViewRoute = '/profile';
  static const String bottomNavRoute = '/bottomNav';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LogInView());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routes.nearbyRoute:
        return MaterialPageRoute(builder: (_) => const PeopleNearbyView());
      case Routes.profileViewRoute:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.bottomNavRoute:
        return MaterialPageRoute(builder: (_) => const BottomNavView());
    }
    return _unDefinedRoute();
  }

  static Route<dynamic> _unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(StringManager.undefinedRoute),
        ),
        body: const Center(
          child: Text(StringManager.noRouteFound),
        ),
      ),
    );
  }
}
