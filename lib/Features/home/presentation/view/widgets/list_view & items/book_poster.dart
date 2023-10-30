import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/view/book_detailed_view.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookPoster extends StatelessWidget {
  const BookPoster({super.key, required this.book});

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
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: book.volumeInfo!.imageLinks?.thumbnail??'',
                errorWidget: (context, url, error) =>
                    const Icon(Icons.error_outline_rounded),
                placeholder: (context, url) => const CustomLoadingIndicator(),
              )),
        ),
      ),
    );
  }
}
