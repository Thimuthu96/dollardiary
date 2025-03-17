import 'package:flutter/material.dart';

import 'onboarding_widget_content.dart';

final List<Widget> widgetList = [
  const OnboardingWidgetContent(
    imgUrl: 'assets/images/Ilustration1.png',
    title: 'Gain total control\nof your money',
    subtitle: 'Become your own money manager\nand make every cent count',
  ),
  const OnboardingWidgetContent(
    imgUrl: 'assets/images/Illustration2.png',
    title: 'Know where your\nmoney goes',
    subtitle:
        'Track your transaction easily,\nwith categories and financial report ',
  ),
  const OnboardingWidgetContent(
    imgUrl: 'assets/images/Ilustration3.png',
    title: 'Planning ahead',
    subtitle: 'Setup your budget for each category\nso you in control',
  ),
];
