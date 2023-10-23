import 'package:bookly_app/Features/home/presentation/view/widgets/custom_detailed_view_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/sections/also_like_section.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/sections/book_information_section.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/sections/button_Section.dart';
import 'package:flutter/material.dart';

class BookDetailedView extends StatelessWidget {
  const BookDetailedView({super.key});
  static const String id = 'BookDetailedView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SafeArea(child: CustomDetailedViewAppBar()),
                  SizedBox(
                    height: 20,
                  ),
                  BookInformationSection(),
                  SizedBox(
                    height: 32,
                  ),
                  ButtonSection(),
                  SizedBox(
                    height: 50,
                  ),
                  AlsoLikeSection(),
                  Expanded(
                    child: SizedBox(
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
