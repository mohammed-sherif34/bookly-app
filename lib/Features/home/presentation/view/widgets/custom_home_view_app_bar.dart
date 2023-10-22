// ignore_for_file: file_names

import 'package:bookly_app/Features/search/presentation/view/search_view.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 16),
      child: Row(
        children: [
          SizedBox(height: 18, child: Image.asset(AssetData.logo)),
          const Spacer(),
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            onPressed: () {
              Navigator.pushNamed(context, SearchView.id);
            },
            iconSize: 20,
          ),
        ],
      ),
    );
  }
}
