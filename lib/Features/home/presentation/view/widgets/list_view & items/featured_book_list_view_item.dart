import 'package:flutter/material.dart';

class FeaturedBookListViewItem extends StatelessWidget {
  const FeaturedBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          //width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/test.png'),
              )),
        ),
      ),
    );
  }
}
