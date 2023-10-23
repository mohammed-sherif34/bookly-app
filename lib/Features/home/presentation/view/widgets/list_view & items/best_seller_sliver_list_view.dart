import 'package:bookly_app/Features/home/presentation/view/widgets/list_view%20&%20items/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerSliverLestView extends StatelessWidget {
  const BestSellerSliverLestView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 20, left: 30),
            child: BestsillerListViewItem(),
          );
        },
      ),
    );
  }
}
/* class BestSellerLestView extends StatelessWidget {
  const BestSellerLestView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        physics:const NeverScrollableScrollPhysics(),
        itemCount: 12,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 20),
            child: BestsillerListViewItem(),
          );
        });
  }
} */
