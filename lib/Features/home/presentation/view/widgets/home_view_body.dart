import 'package:bookly_app/Features/home/presentation/view/widgets/custom_home_view_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/list_view%20&%20items/newest_sliver_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/list_view%20&%20items/featured_book_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
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
                child: Text('Newest Books', style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: NewestSliverLestView(),
        ),
      ],
    );
  }
}
