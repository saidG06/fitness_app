import 'package:fitness_app/core/test_style.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final String? image;
  final Color? txtColor;
  final Color btnColor;
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.image,
    this.txtColor,
    required this.btnColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.0,
        width: 60,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              Image.asset(
                'assets/image/$image',
                height: 25.0,
                width: 60.0,
              ),
            Text(
              text,
              style: txtColor != null
                  ? headline2.copyWith(color: txtColor)
                  : headline2,
            )
          ],
        ),
      ),
    );
  }
}