import 'package:bookly_app/Features/home/presentation/view/widgets/best_seller_sliver_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_home_view_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/featured_book_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              CustomHomeViewAppBar(),
              FeaturedBookListView(),
              Padding(
                padding: EdgeInsets.only(left: 30.0, top: 50),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        BestSellerSliverLestView(),
      ],
    );
  }
}
