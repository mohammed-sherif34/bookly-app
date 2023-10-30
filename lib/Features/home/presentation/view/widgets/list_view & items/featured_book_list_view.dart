import 'package:bookly_app/Features/home/presentation/manager/featured_book_cubit/featured_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/list_view%20&%20items/book_poster.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/core/widgets/err_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
          builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BookPoster(
                  book: state
                      .books[index],
                );
              },
            ),
          );
        } else if (state is FeaturedBookFailure) {
          return ErrWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      }),
    );
  }
}



