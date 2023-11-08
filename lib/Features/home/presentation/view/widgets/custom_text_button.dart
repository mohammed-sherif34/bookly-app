import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//final Uri _url = Uri.parse('https://flutter.dev');

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.shape,
      required this.backgroundColor,
      required this.buttonTitle,
      required this.textColor,
      required this.url});
  final OutlinedBorder shape;
  final Color backgroundColor;
  final String buttonTitle;
  final Color textColor;
  final String url;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: _launchUrl,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor, shape: shape),
        child: Text(
          buttonTitle,
          style: Styles.textStyle18.copyWith(color: textColor),
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
