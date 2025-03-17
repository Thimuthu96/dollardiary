import 'package:dollardiary/src/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  String hint;
  final String? Function(String?) validator;
  TextEditingController controller;
  final Icon? icon;
  bool enable;
  bool isObscureText;
  bool focus;

  MyFormField({
    required this.hint,
    required this.validator,
    required this.controller,
    this.icon,
    required this.enable,
    required this.isObscureText,
    required this.focus,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextInputType keyboardType;
    if (hint == 'Mobile') {
      keyboardType = TextInputType.number;
    } else if (hint == 'Email') {
      keyboardType = TextInputType.emailAddress;
    } else {
      keyboardType = TextInputType.text;
    }
    return TextFormField(
      // readOnly: readOnly,
      autofocus: focus,
      enabled: enable,
      obscureText: isObscureText,
      keyboardType: keyboardType,
      // keyboardType: hint == 'Phone' ? TextInputType.number : TextInputType.text,
      validator: validator,
      controller: controller,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        // prefixIcon: icon ??
        //     SizedBox(
        //       width: 0,
        //     ),
        fillColor: Colors.white,
        labelText: hint,
        hintText: hint == 'Mobile Number' ? "077#######" : "",
        labelStyle:
            const TextStyle(color: AppPallete.txtFormFieldText, fontSize: 18),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red[300]!,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: AppPallete.txtFormFieldBorder, width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppPallete.Violet100, width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
