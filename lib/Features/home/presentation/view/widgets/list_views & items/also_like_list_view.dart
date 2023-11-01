import 'package:bookly_app/Features/home/presentation/manager/also_like_cubit/also_like_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/list_views%20&%20items/book_poster.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/core/widgets/err_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlsoLikeCubit, AlsoLikeState>(builder: (context, state) {
      if (state is AlsoLikeSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BookPoster(
                book: state.books[index],
              );
            },
          ),
        );
      } else if (state is AlsoLikeFailure) {
        return ErrWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
