import 'package:flutter/material.dart';

class PrimaryButtonWithIcon extends StatelessWidget {
  PrimaryButtonWithIcon({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.bgColor,
    required this.txtColor,
    this.onTap,
  });

  final String imgUrl;
  final String title;
  final Color bgColor;
  final Color txtColor;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          )),
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imgUrl),
              Text(
                title,
                style: TextStyle(
                  color: txtColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )),
    );
  }
}
