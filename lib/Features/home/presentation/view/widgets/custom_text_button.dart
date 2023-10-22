
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.shape,
      required this.backgroundColor,
      required this.buttonTitle,
      required this.textColor});
  final OutlinedBorder shape;
  final Color backgroundColor;
  final String buttonTitle;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor, shape: shape),
        child: Text(
          buttonTitle,
          style: Styles.textStyle18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
