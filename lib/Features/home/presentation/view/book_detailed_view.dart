import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/manager/also_like_cubit/also_like_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/book_detailed_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailedView extends StatefulWidget {
  const BookDetailedView({super.key, required this.book});
  static const String id = 'BookDetailedView';
  final BookModel book;
  @override
  State<BookDetailedView> createState() => _BookDetailedViewState();
}

class _BookDetailedViewState extends State<BookDetailedView> {
  @override
  void initState() {
    BlocProvider.of<AlsoLikeCubit>(context).fetchAlsoLikeBook(
        category: widget.book.volumeInfo?.categories?[0] ?? 'computer science');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailedViewBody(
        book: widget.book,
      ),
    );
  }
}
