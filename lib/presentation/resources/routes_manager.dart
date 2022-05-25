import 'package:flutter/material.dart';
import 'package:flutter_mvvm_clean/presentation/home/home_view.dart';
import 'package:flutter_mvvm_clean/presentation/login/login_view.dart';
import 'package:flutter_mvvm_clean/presentation/onboarding/onboarding_view.dart';
import 'package:flutter_mvvm_clean/presentation/recover_pwd/recover_pwd_view.dart';
import 'package:flutter_mvvm_clean/presentation/register/register_view.dart';
import 'package:flutter_mvvm_clean/presentation/splash/splash_view.dart';
import 'package:flutter_mvvm_clean/presentation/store_detail/store_detail_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String recoverPwdRoute = '/recoverpwd';
  static const String homeRoute = '/home';
  static const String storeDetailRoute = '/storeDetail';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.recoverPwdRoute:
        return MaterialPageRoute(builder: (_) => const RecoverPwdView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.storeDetailRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No route found'),
        ),
        body: const Center(
          child: Text('No route found'),
        ),
      ),
    );
  }
}
