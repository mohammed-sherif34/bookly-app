import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 20),
            /* child: NewestListViewItem(
              book:,
            ), */
          );
        },
      ),
    );
  }
}
