import 'package:dollardiary/src/app/modules/Auth/view/login_screen.dart';
import 'package:dollardiary/src/app/modules/Auth/view/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../modules/Home/home.dart';
import '../modules/Onboarding/view/onboarding_screen.dart';
import '../modules/Onboarding/view/splash_screen.dart';
import 'app_route_paths.dart';

class AppRoutes {
  static final customRouter = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: CoreRoutePaths.splashScreen,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: CoreRoutePaths.onBoardingScreen,
        name: 'onboard',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: CoreRoutePaths.loginScreen,
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: CoreRoutePaths.signupScreen,
        name: 'signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: CoreRoutePaths.homeScreen,
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
    errorBuilder: (context, state) {
      return const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '404',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Not Found',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

// class CustomRouter {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     // final args = settings.arguments;
//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(builder: (context) => const SplashScreen());
//       case '/home':
//         return MaterialPageRoute(builder: (context) => const HomeScreen());
//       default:
//         return MaterialPageRoute(
//           builder: (context) => Scaffold(
//             body: Center(
//               child: Column(
//                 children: [
//                   const Text('404 Not Found'),
//                   Text('Requested URL: ${settings.name}'),
//                 ],
//               ),
//             ),
//           ),
//         );
//     }
//   }
// }
