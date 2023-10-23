import 'package:bookly_app/Features/home/presentation/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomTextButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          )),
          backgroundColor: Colors.white,
          buttonTitle: '19.99€',
          textColor: Colors.black,
        )),
        Expanded(
            child: CustomTextButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          )),
          backgroundColor: Color(0xffEF8262),
          buttonTitle: 'Free preview',
          textColor: Colors.white,
        )),
      ],
    );
  }
}
