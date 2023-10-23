import 'package:bookly_app/Features/Splash/presentation/views/widgets/splach_view_body.dart';
import 'package:flutter/material.dart';

class SplachView extends StatelessWidget {
  const SplachView({super.key});
  static const String id = ' SplachView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // backgroundColor: Colors.black,
        body: SpalchViewBody());
  }
}
