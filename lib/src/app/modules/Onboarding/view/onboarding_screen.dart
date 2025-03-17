import 'package:carousel_slider/carousel_slider.dart';
import 'package:dollardiary/src/app/routes/app_route_paths.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../components/primary_button.dart';
import 'components/onboarding_widget_list.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CarouselSlider(
                    items: widgetList,
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage:
                          false, // Ensure no extra padding for centering
                      viewportFraction: 1.0,
                      height: 450,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widgetList.asMap().entries.map((entry) {
                      return Container(
                        width: _current == entry.key ? 16.0 : 12.0,
                        height: _current == entry.key ? 16.0 : 12.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == entry.key
                              ? AppPallete.Violet100
                              : AppPallete.Violet20,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  PrimaryButton(
                    title: 'Sign Up',
                    bgColor: AppPallete.Violet100,
                    txtColor: Colors.white,
                    onTap: () {
                      // debugPrint("***** Signup Taped!");
                      context.push(CoreRoutePaths.signupScreen);
                    },
                  ),
                  const SizedBox(height: 16),
                  PrimaryButton(
                    title: 'Login',
                    bgColor: AppPallete.Violet20,
                    txtColor: AppPallete.Violet100,
                    onTap: () {
                      // debugPrint("***** Login Taped!");
                      context.push(CoreRoutePaths.loginScreen);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
