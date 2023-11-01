import 'package:bookly_app/Features/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/list_views%20&%20items/newest_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/core/widgets/err_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestSliverLestView extends StatelessWidget {
  const NewestSliverLestView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              BlocProvider.of<NewestBookCubit>(context).book =
                  state.books[index];
              return Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: NewestListViewItem(
                  book: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBookFailure) {
          return ErrWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}


/* class BestSellerLestView extends StatelessWidget {
  const BestSellerLestView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        physics:const NeverScrollableScrollPhysics(),
        itemCount: 12,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 20),
            child: BestsillerListViewItem(),
          );
        });
  }
} */
