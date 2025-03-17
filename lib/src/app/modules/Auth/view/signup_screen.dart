import 'package:dollardiary/src/app/components/primary_button.dart';
import 'package:dollardiary/src/app/components/primary_button_with_icon.dart';
import 'package:dollardiary/src/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/my_form_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final AutovalidateMode _autoValidate = AutovalidateMode.disabled;

  bool isChecked = false;
  handleCheck(bool? value) {
    setState(() {
      isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 56, left: 16, right: 16),
        child: Column(
          children: [
            Form(
              key: _formKey,
              autovalidateMode: _autoValidate,
              child: Column(
                children: [
                  MyFormField(
                    enable: true,
                    isObscureText: false,
                    focus: false,
                    hint: "Name",
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    // icon: Icon(
                    //   Icons.person,
                    //   color: Colors.grey[500],
                    // ),
                    controller: nameController,
                  ),
                  const SizedBox(height: 24),
                  MyFormField(
                    enable: true,
                    isObscureText: false,
                    focus: false,
                    hint: "Email",
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    // icon: Icon(
                    //   Icons.person,
                    //   color: Colors.grey[500],
                    // ),
                    controller: emailController,
                  ),
                  const SizedBox(height: 24),
                  MyFormField(
                    enable: true,
                    isObscureText: false,
                    focus: false,
                    hint: "Password",
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    // icon: Icon(
                    //   Icons.person,
                    //   color: Colors.grey[500],
                    // ),
                    controller: passwordController,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 17),
            Row(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    checkboxTheme: CheckboxThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(4.0), // Rounded corners
                      ),
                      side: const BorderSide(
                        color: AppPallete.Violet100, // Border color
                        width: 2.0, // Border width
                      ),
                    ),
                  ),
                  child: SizedBox(
                    height: 30, // Set desired height
                    width: 30, // Set desired width
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        handleCheck(value);
                      },
                      activeColor:
                          AppPallete.Violet100, // Main color when checked
                      checkColor: Colors.white, // Check mark color
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Flexible(
                  child: RichText(
                    text: const TextSpan(
                      text: "By signing up, you agree to the ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: "Terms of Service and Privacy Policy",
                          style: TextStyle(
                            color: AppPallete.Violet100,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          // recognizer: TapGestureRecognizer()
                          // ..onTap = () {
                          //   // Handle tap on "Terms of Service"
                          //   print("Terms of Service tapped");
                          // },
                        ),
                      ],
                    ),
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            PrimaryButton(
              title: 'Sign Up',
              bgColor: AppPallete.Violet100,
              txtColor: Colors.white,
            ),
            const SizedBox(height: 12),
            const Text(
              'or with',
              style: TextStyle(
                color: AppPallete.txtFormFieldText,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            PrimaryButtonWithIcon(
              imgUrl: 'assets/images/google.png',
              title: 'Sign Upwith Google',
              bgColor: Colors.white,
              txtColor: Colors.black,
            ),
            const SizedBox(height: 12),
            RichText(
              text: const TextSpan(
                text: "Already have an account? ",
                style: TextStyle(
                  color: AppPallete.txtFormFieldText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text: "Login",
                    style: TextStyle(
                        color: AppPallete.Violet100,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                    // recognizer: TapGestureRecognizer()
                    // ..onTap = () {
                    //   // Handle tap on "Terms of Service"
                    //   print("Terms of Service tapped");
                    // },
                  ),
                ],
              ),
              softWrap: true,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      ),
    );
  }
}
