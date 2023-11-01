import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ErrWidget extends StatelessWidget {
  const ErrWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      maxLines: 2,
      style: Styles.textStyle18,
    );
  }
}
