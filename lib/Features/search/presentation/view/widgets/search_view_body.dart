import 'package:bookly_app/Features/search/presentation/view/widgets/custom_text_filed.dart';
import 'package:bookly_app/Features/search/presentation/view/widgets/search_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: CustomTextField(),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Search Result', style: Styles.textStyle18),
              ],
            ),
          ),
          SearchListView(),
        ],
      ),
    );
  }
}
