import 'package:bookly_app/Features/home/presentation/view/widgets/list_view%20&%20items/book_poster.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/rating_widget.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookInformationSection extends StatelessWidget {
  const BookInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .35,
          child: const BookPoster(),
        ),
        const SizedBox(
          height: 32,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 13,
        ),
        const Opacity(
          opacity: .6,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const RatingWidget()
      ],
    );
  }
}
