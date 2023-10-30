
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: IconButton(
            icon: const Opacity(
                opacity: .8, child: Icon(FontAwesomeIcons.magnifyingGlass)),
            onPressed: () {},
            iconSize: 20,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          )),
    );
  }
}