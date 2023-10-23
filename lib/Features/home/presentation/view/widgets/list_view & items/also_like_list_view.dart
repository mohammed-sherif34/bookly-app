import 'package:bookly_app/Features/home/presentation/view/widgets/list_view%20&%20items/featured_book_list_view_item.dart';
import 'package:flutter/material.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const FeaturedBookListViewItem();
        },
      ),
    );
  }
}