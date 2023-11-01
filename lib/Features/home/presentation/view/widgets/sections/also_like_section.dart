import 'package:bookly_app/Features/home/presentation/view/widgets/list_views%20&%20items/also_like_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AlsoLikeSection extends StatelessWidget {
  const AlsoLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 14,
        ),
        const AlsoLikeListView(),
      ],
    );
  }
}
