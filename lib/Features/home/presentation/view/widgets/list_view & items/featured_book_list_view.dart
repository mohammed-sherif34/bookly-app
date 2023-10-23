import 'package:bookly_app/Features/home/presentation/view/widgets/list_view%20&%20items/featured_book_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const FeaturedBookListViewItem();
          },
        ),
      ),
    );
  }
}
