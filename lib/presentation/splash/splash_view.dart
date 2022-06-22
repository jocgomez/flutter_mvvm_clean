import 'package:flutter/material.dart';
import 'package:flutter_mvvm_clean/presentation/resources/assets_manager.dart';
import 'package:flutter_mvvm_clean/presentation/resources/color_manager.dart';
import 'package:flutter_mvvm_clean/presentation/resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushNamed(context, Routes.onBoardingRoute);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(
          child: Image(image: AssetImage(AssetsManager.splashLogo))),
    );
  }
}
