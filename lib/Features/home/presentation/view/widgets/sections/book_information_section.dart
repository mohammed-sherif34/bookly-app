import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/list_view%20&%20items/book_poster.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/rating_widget.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookInformationSection extends StatelessWidget {
  const BookInformationSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .35,
          child: BookPoster(book: book),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          book.volumeInfo?.title ?? 'book',
          maxLines: 2,
          style: Styles.textStyle30.copyWith(),
        ),
        const SizedBox(
          height: 13,
        ),
        Opacity(
          opacity: .6,
          child: Text(
            book.volumeInfo?.authors?[0] ?? '',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        RatingWidget(
          book: book,
        )
      ],
    );
  }
}
