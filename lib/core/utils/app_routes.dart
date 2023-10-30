import 'package:bookly_app/Features/Splash/presentation/views/splach_view.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/repos/home_repo_imp.dart';
import 'package:bookly_app/Features/home/presentation/manager/also_like_cubit/also_like_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/book_detailed_view.dart';
import 'package:bookly_app/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/search/presentation/view/search_view.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> booklyRoutes = {
    HomeView.id: (context) => const HomeView(),
    SplachView.id: (context) => const SplachView(),
    /* BookDetailedView.id: (context) => BlocProvider(
          create: (context) => AlsoLikeCubit(locator.get<HomeRepoImp>()),
          child:  const BookDetailedView(book:  BookModel()),
        ), */
    SearchView.id: (context) => const SearchView()
  };

}
