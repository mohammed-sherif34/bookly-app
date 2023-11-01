import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/view/book_detailed_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/list_views%20&%20items/book_poster.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NewestListViewItem extends StatelessWidget {
  const NewestListViewItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, BookDetailedView.id,arguments: book);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return BookDetailedView(
            book: book,
          );
        }));
      },

      // ignore: sized_box_for_whitespace
      child: Container(
        color: kPrimeColor,
        height: MediaQuery.of(context).size.height * .16,
        width: MediaQuery.of(context).size.width * .5,
        child: Row(
          children: [
            BookPoster(book: book),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      maxLines: 2,
                      book.volumeInfo?.title ?? 'Computer science Book',
                      style: Styles.textStyle18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    book.volumeInfo?.authors?[0] ?? 'unknown',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 57,
                      ),
                      /*  RatingWidget(
                        book: book,
                      ), */
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
