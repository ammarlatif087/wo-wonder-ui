import 'dart:async';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/index.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  void _splashScreenDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  void _goNext() {
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
  }

  @override
  void initState() {
    _splashScreenDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Utils.popinMedText('People Nearby ',
                  fontSize: 24.sp, color: ColorManager.white),
              const Spacer(),
              SizedBox(
                width: 1.sw,
                child: Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorManager.white.withOpacity(0.3),
                        radius: 120.r,
                        child: CircleAvatar(
                          backgroundColor: ColorManager.white.withOpacity(0.5),
                          radius: 100.r,
                          child: CircleAvatar(
                            backgroundColor: ColorManager.white,
                            radius: 80.r,
                            child: FaIcon(
                              FontAwesomeIcons.paperPlane,
                              color: ColorManager.primary,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 30,
                        child: CircleAvatar(
                          backgroundImage: const AssetImage(
                            AppImages.profile,
                          ),
                          backgroundColor: ColorManager.white,
                          radius: 27.r,
                        ),
                      ),
                      Positioned(
                        left: 30,
                        child: CircleAvatar(
                          backgroundImage: const AssetImage(
                            AppImages.profile,
                          ),
                          backgroundColor: ColorManager.buttonRed,
                          radius: 20.r,
                        ),
                      ),
                      Positioned(
                        top: 120,
                        right: 0,
                        child: CircleAvatar(
                          backgroundImage: const AssetImage(
                            AppImages.profile,
                          ),
                          backgroundColor: ColorManager.white,
                          radius: 20.r,
                        ),
                      ),
                      Positioned(
                        top: 100,
                        child: CircleAvatar(
                          backgroundImage: const AssetImage(
                            AppImages.profile,
                          ),
                          backgroundColor: ColorManager.white,
                          radius: 20.r,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 30,
                        child: CircleAvatar(
                          backgroundImage: const AssetImage(
                            AppImages.profile,
                          ),
                          backgroundColor: ColorManager.white,
                          radius: 27.r,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 30,
                        child: CircleAvatar(
                          backgroundImage: const AssetImage(
                            AppImages.profile,
                          ),
                          backgroundColor: ColorManager.white,
                          radius: 20.r,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Utils.popinRegText('Searching People Nearby',
                  color: ColorManager.white),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
