import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../routes/app_route_paths.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // To do implement initState
    super.initState();
    checkAuth();
  }

  Future<void> checkAuth() async {
    // To do implement checkAuth
    await Future.delayed(const Duration(milliseconds: 2000));
    context.go(CoreRoutePaths.onBoardingScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.Violet100,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Ellipse.png'),
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: const Center(
            child: Text(
              'Dollar Diary',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
