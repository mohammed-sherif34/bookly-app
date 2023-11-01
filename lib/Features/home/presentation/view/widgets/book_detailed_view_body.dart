import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_detailed_view_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/sections/also_like_section.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/sections/book_information_section.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/sections/button_section.dart';
import 'package:flutter/material.dart';

class BookDetailedViewBody extends StatelessWidget {
  const BookDetailedViewBody({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SafeArea(child: CustomDetailedViewAppBar()),
                const SizedBox(
                  height: 20,
                ),
                BookInformationSection(
                  book: book,
                ),
                const SizedBox(
                  height: 32,
                ),
                ButtonSection(
                  book: book,
                ),
                const SizedBox(
                  height: 50,
                ),
                const AlsoLikeSection(),
                const Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
