import 'package:bookly_app/Features/home/presentation/view/book_detailed_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/featured_book_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/rating_widget.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestsillerListViewItem extends StatelessWidget {
  const BestsillerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BookDetailedView.id);
      },
      // ignore: sized_box_for_whitespace
      child: Container(
        height: MediaQuery.of(context).size.height * .16,
        child: Row(
          children: [
            const FeaturedBookListViewItem(),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
                      maxLines: 2,
                      'Harry Potter and the Globel of Fire',
                      style: Styles.textStyle18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 57,
                      ),
                      const RatingWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
